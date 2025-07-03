import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/data_submissions.table.dart';
import 'package:drift/drift.dart';

part 'data_submissions_dao.g.dart';

@DriftAccessor(tables: [DataSubmissions])
class DataSubmissionsDao extends DatabaseAccessor<AppDatabase>
    with _$DataSubmissionsDaoMixin {
  DataSubmissionsDao(AppDatabase db) : super(db);

  Future<List<DataSubmission>> getAll() => select(dataSubmissions).get();

  Future<DataSubmission?> getById(String id) {
    return (select(dataSubmissions)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<DataSubmission> entry) {
    return into(dataSubmissions).insert(entry);
  }

  Future<bool> updateObject(DataSubmission item) {
    final now = Value(DateTime.now());
    return update(dataSubmissions)
        .replace(item.copyWith(lastModifiedDate: now, updatedAtClient: now));
  }

  Future<bool> markFinal(DataSubmission item) {
    return updateObject(item.copyWith(
        syncState: InstanceSyncStatus.finalized,
        finishedEntryTime: Value(DateTime.now())));
  }

  /// softDelete
  Future<int> deleteObject(DataSubmission submission) {
    return deleteById(submission.id);
  }

  /// softDelete
  Future<int> deleteById(String id) async {
    final submission = await getById(id);
    return _softDelete(submission);
  }

  /// hard delete
  Future<int> _hardDeleteById(String id) {
    return (delete(dataSubmissions)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// hard delete
  Future<int> _hardDeleteObject(DataSubmission submission) {
    return _hardDeleteById(submission.id);
  }

  Future<int> _softDelete(DataSubmission? submission) async {
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
  bool isSoftDelete(DataSubmission? submission) {
    return submission?.isToUpdate == true;
  }

  /// still local and not yet in server
  bool isToPost(DataSubmission submission) {
    return submission.isToUpdate;
  }

  /// watch the status of submission belonging to an
  /// item (i.e, the aggregation level) (e.g. Assignment, Form,..)
  /// by passing the item id and the item level
  Selectable<SubmissionSyncStatusModel> selectStatusByLevel(
      String id, StatusAggregationLevel aggregationLevel) {
    late final Expression<bool> byLevel = switch (aggregationLevel) {
      StatusAggregationLevel.assignment =>
        dataSubmissions.flowInstance.equals(id),
      StatusAggregationLevel.form => dataSubmissions.dataTemplate.equals(id),
    };

    final syncState = dataSubmissions.syncState;
    final count = dataSubmissions.id.count();

    final query = selectOnly(dataSubmissions)
      ..addColumns([syncState, count])
      ..where(byLevel)
      ..groupBy([dataSubmissions.syncState]);

    return query.map((row) {
      final syncState = row.read(dataSubmissions.syncState)!;
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

    final sub = alias(db.dataSubmissions, 's');
    final a = alias(db.flowInstances, 'a');
    final ou = alias(db.orgUnits, 'ou');
    final f = alias(db.formTemplates, 'f');
    final fv = alias(db.formTemplateVersions, 'fv');

    final JoinedSelectStatement<HasResultSet, dynamic> query =
        select(sub).join([
      innerJoin(a, a.id.equalsExp(sub.flowInstance)),
      innerJoin(ou, a.orgUnit.equalsExp(ou.id)),
      innerJoin(fv, fv.id.equalsExp(sub.dataTemplateVer)),
      innerJoin(f, f.id.equalsExp(fv.template)),
    ])
          ..where(sub.dataTemplate.equals(form));

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
