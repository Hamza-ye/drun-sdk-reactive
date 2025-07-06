import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/data_submissions.table.dart';
import 'package:drift/drift.dart';

part 'data_submissions_dao.g.dart';

@DriftAccessor(tables: [DataInstances])
class DataInstancesDao extends DatabaseAccessor<AppDatabase>
    with _$DataInstancesDaoMixin {
  DataInstancesDao(AppDatabase db) : super(db);

  Future<List<DataInstance>> getAll() => select(dataInstances).get();

  Future<DataInstance?> getById(String id) {
    return (select(dataInstances)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<DataInstance> entry) {
    return into(dataInstances).insert(entry);
  }

  Future<bool> updateObject(DataInstance item) {
    final now = Value(DateTime.now());
    return update(dataInstances)
        .replace(item.copyWith(lastModifiedDate: now, updatedAtClient: now));
  }

  Future<bool> markFinal(DataInstance item) {
    return updateObject(item.copyWith(
        syncState: InstanceSyncStatus.finalized,
        finishedEntryTime: Value(DateTime.now())));
  }

  /// softDelete
  Future<int> deleteObject(DataInstance submission) {
    return deleteById(submission.id);
  }

  /// softDelete
  Future<int> deleteById(String id) async {
    final submission = await getById(id);
    return _softDelete(submission);
  }

  /// hard delete
  Future<int> _hardDeleteById(String id) {
    return (delete(dataInstances)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// hard delete
  Future<int> _hardDeleteObject(DataInstance submission) {
    return _hardDeleteById(submission.id);
  }

  Future<int> _softDelete(DataInstance? submission) async {
    if (submission == null) return 0;
    final submissionToDelete = await getById(submission.id);
    if (submissionToDelete == null) return 0;
    if (isSoftDelete(submissionToDelete)) {
      await updateObject(submissionToDelete.copyWith(deleted: true));
      return 1;
    } else {
      return await _hardDeleteObject(submissionToDelete);
    }
  }

  /// was already in server and only updates are sent
  bool isSoftDelete(DataInstance? submission) {
    return submission?.isToUpdate == true;
  }

  /// still local and not yet in server
  bool isToPost(DataInstance submission) {
    return submission.isToUpdate;
  }

  /// watch the status of submission belonging to an
  /// item (i.e, the aggregation level) (e.g. Assignment, Form,..)
  /// by passing the item id and the item level
  Selectable<SubmissionSyncStatusModel> selectStatusByLevel(
      String id, StatusAggregationLevel aggregationLevel) {
    late final Expression<bool> byLevel = switch (aggregationLevel) {
      StatusAggregationLevel.assignment => dataInstances.assignment.equals(id),
      StatusAggregationLevel.form => dataInstances.formTemplate.equals(id),
    };

    final syncState = dataInstances.syncState;
    final count = dataInstances.id.count();

    final query = selectOnly(dataInstances)
      ..addColumns([syncState, count])
      ..where(byLevel)
      ..groupBy([dataInstances.syncState]);

    return query.map((row) {
      final syncState = row.read(dataInstances.syncState)!;
      return SubmissionSyncStatusModel(
          syncState: InstanceSyncStatus.getValue(syncState),
          count: row.read(count)!);
    });
  }

  Selectable<SubmissionSummary> selectSubmissions(
    String form, {
    SubmissionsFilter? filter,
    int page = 1,
    int pageSize = 20,
  }) {
    final offset = (page - 1) * pageSize;

    final sub = alias(db.dataInstances, 's');
    final a = alias(db.assignments, 'a');
    final ou = alias(db.orgUnits, 'ou');
    final f = alias(db.formTemplates, 'f');
    final fv = alias(db.formTemplateVersions, 'fv');

    final JoinedSelectStatement<HasResultSet, dynamic> query =
        select(sub).join([
      innerJoin(a, a.id.equalsExp(sub.assignment)),
      innerJoin(ou, a.orgUnit.equalsExp(ou.id)),
      innerJoin(fv, fv.id.equalsExp(sub.templateVersion)),
      innerJoin(f, f.id.equalsExp(fv.template)),
    ])
          ..where(sub.formTemplate.equals(form));

    if (filter != null) {
      if (filter.assignment != null) {
        query.where(a.id.equals(filter.assignment!));
      }

      if (filter.team != null) {
        query.where(sub.team.equals(filter.team!));
      }
      if (filter.syncState != null) {
        query.where(sub.syncState.equals(filter.syncState!.name));
      }

      if (filter.searchTerm.isNotEmpty) {
        final pattern = '%${filter.searchTerm.toLowerCase()}%';
        query..where(ou.name.like(pattern) | ou.code.like(pattern));
      }
    }

    if (!(filter?.includeDeleted ?? false)) {
      query.where(sub.deleted.equals(false));
    }

    query
      ..limit(pageSize, offset: offset)
      ..orderBy([
        OrderingTerm(expression: sub.lastModifiedDate, mode: OrderingMode.desc),
        OrderingTerm(expression: sub.id),
      ]);

    // Map rows to model
    return query.map((row) {
      final submission = row.readTable(sub);
      final orgUnit = row.readTable(ou);
      final form = row.readTable(f);
      final formVersion = row.readTable(fv);

      return SubmissionSummary(
        id: submission.id,
        form: IdentifiableModel(
          id: form.id,
          name: form.name,
          label: form.label,
        ),
        versionNumber: form.versionNumber,
        orgUnit: IdentifiableModel(
          id: orgUnit.id,
          code: orgUnit.code,
          name: orgUnit.name,
          label: orgUnit.label,
        ),
        // progress: submission.assignmentStatus,
        submittedAt: submission.createdDate,
        syncStatus: submission.syncState,
        formVersionId: formVersion.id,
      );
    });
  }
}
