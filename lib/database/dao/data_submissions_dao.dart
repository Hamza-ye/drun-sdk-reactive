import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:d_sdk/core/code_generator.dart';
import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/sync_summary_model.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/dao/base_dao_extension.dart';
import 'package:d_sdk/database/extensions/data_submission.extension.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/data_submissions.table.dart';
import 'package:d_sdk/datasource/util/submission_aggregator.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:drift/drift.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

part 'data_submissions_dao.g.dart';

@DriftAccessor(tables: [DataInstances])
class DataInstancesDao extends DatabaseAccessor<AppDatabase>
    with _$DataInstancesDaoMixin, BaseDaoMixin<DataInstance> {
  DataInstancesDao(AppDatabase db) : super(db);

  @override
  String get resourceName => 'dataSubmission';

  @override
  String get resourcePath => '$resourceName/objects?paged=false';

  @override
  DataInstance fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final form = data['form'];
    final version = data['version'];
    final String formId = form != null && version != null
        ? '${form}_$version'
        : data['formVersion'];
    final assignment = data['assignment'];
    final orgUnit = data['orgUnit'];
    final team = data['team'];
    return DataInstance.fromJson({
      ...data,
      'status': InstanceSyncStatus.synced.name,
      'progressStatus': data['status'],
      'form': formId,
      'assignment': assignment,
      'orgUnit': orgUnit,
      'team': team,
    }, serializer: serializer);
  }

  Future<List<DataInstance>> upload(List<String> uids) async {
    List<DataInstance> submissions = await (select(dataInstances)
          ..where((f) =>
              f.id.isIn(uids) &
              f.syncState.isIn([
                InstanceSyncStatus.finalized.name,
                InstanceSyncStatus.syncFailed.name
              ])))
        .get();

    final uploadPayload = submissions.map((submission) {
      return submission.toUpload();
    }).toList();

    final resource = '$resourceName/bulk';

    print('payload: $uploadPayload');
    final response = await apiClient.request(
        resourceName: resource, data: uploadPayload, method: 'post');

    SyncSummaryModel summary = SyncSummaryModel.fromJson(response.data);
    logDebug(jsonEncode(uploadPayload.first), data: {"data": uploadPayload});

    final List<DataInstance> queue = [];

    for (var submission in submissions) {
      final syncFailed = summary.failed.containsKey(submission.id);
      final syncCreated = summary.created.contains(submission.id);
      final syncUpdated = summary.updated.contains(submission.id);
      DataInstance newEntity = submission;
      if (syncCreated || syncUpdated) {
        newEntity = submission.copyWith(
            syncState: InstanceSyncStatus.synced,
            isToUpdate: true,
            lastSyncMessage: Value(null),
            lastSyncDate: Value(DateTime.now().toUtc()));
        // availableItemCount++;
      } else if (syncFailed) {
        newEntity = submission.copyWith(
            syncState: InstanceSyncStatus.syncFailed,
            lastSyncMessage: Value(summary.failed[submission.id]));

        // availableItemCount++;
      }

      queue.add(newEntity);
    }

    if (queue.isNotEmpty) {
      transaction(() async {
        await batch((b) {
          b.insertAllOnConflictUpdate(table, queue);
        });
      });
    }

    return queue;
  }

  Future<DataInstance?> getById(String id) {
    return (select(dataInstances)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<DataInstance> createDraft({
    String? assignmentId,
    required String templateId,
    String? templateVersionId,
  }) async {
    // final FormTemplateModel? templateModel = await attachedDatabase
    //     .formTemplateVersionsDao
    //     .selectFormTemplatesWithRefs(
    //         assignmentId: assignmentId, versionId: templateVersionId)
    //     .getSingleOrNull();

    final templateModel = await getTemplateByVersionOrLatest(
        templateId: templateId, versionId: templateVersionId);

    final entry = DataInstancesCompanion.insert(
      id: CodeGenerator.generateUid(),
      formTemplate: templateModel.id,
      templateVersion: templateModel.versionUid,
      assignment: Value(assignmentId),
      syncState: InstanceSyncStatus.draft,
      isToUpdate: false,
      startEntryTime: Value(DateTime.now().toUtc()),
      updatedAtClient: Value(DateTime.now().toUtc()),
      createdDate: Value(DateTime.now().toUtc()),
      lastModifiedDate: Value(DateTime.now().toUtc()),
    );

    final row = await into(dataInstances).insertReturning(entry);

    return row;
  }

  Future<int> insert(Insertable<DataInstance> entry) {
    return into(dataInstances).insert(entry);
  }

  Future<bool> updateObject(DataInstancesCompanion item) {
    final now = Value(DateTime.now().toUtc());
    return update(dataInstances)
        .replace(item.copyWith(lastModifiedDate: now, updatedAtClient: now));
  }

  Future<void> updateData(String id, {Map<String, dynamic>? data}) async {
    final now = Value(DateTime.now().toUtc());
    await (update(dataInstances)..where((t) => t.id.equals(id))).write(
      DataInstancesCompanion(
          syncState: Value(InstanceSyncStatus.draft),
          formData: Value.absentIfNull(data),
          finishedEntryTime: now,
          lastModifiedDate: now,
          updatedAtClient: now),
    );
  }

  Future<void> markFinal(String id) async {
    final now = Value(DateTime.now().toUtc());
    await (update(dataInstances)..where((t) => t.id.equals(id))).write(
      DataInstancesCompanion(
          syncState: Value(InstanceSyncStatus.finalized),
          finishedEntryTime: now,
          lastModifiedDate: now,
          updatedAtClient: now),
    );
  }

  Future<void> markDeleted(String id) async {
    final now = Value(DateTime.now().toUtc());
    await (update(dataInstances)..where((t) => t.id.equals(id))).write(
      DataInstancesCompanion(
          deleted: Value(true),
          finishedEntryTime: now,
          lastModifiedDate: now,
          updatedAtClient: now),
    );
  }

  /// softDelete
  Future<int> deleteObject(DataInstance submission) {
    return deleteById(submission.id);
  }

  /// softDelete
  Future<int> deleteById(String id) async {
    return _softDelete(id);
  }

  /// hard delete
  Future<int> _hardDeleteById(String id) {
    return (delete(dataInstances)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// hard delete
  Future<int> _hardDeleteObject(DataInstance submission) {
    return _hardDeleteById(submission.id);
  }

  Future<int> _softDelete(String? id) async {
    if (id == null) return 0;
    final submissionToDelete = await getById(id);
    if (submissionToDelete == null) return 0;
    if (isSoftDelete(submissionToDelete)) {
      await markDeleted(id);
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
    return !submission.isToUpdate;
  }

  /// watch the status of submission belonging to an
  /// item (i.e, the aggregation level) (e.g. Assignment, Form,..)
  /// by passing the item id and the item level
  Selectable<SubmissionSyncStatusModel> selectStatusByLevel(
      {required String id,
      required StatusAggregationLevel aggregationLevel,
      String? assignmentId}) {
    late final Expression<bool> byLevel = switch (aggregationLevel) {
      StatusAggregationLevel.assignment => dataInstances.assignment.equals(id),
      StatusAggregationLevel.form => dataInstances.formTemplate.equals(id),
    };

    final syncState = dataInstances.syncState;
    final count = dataInstances.id.count();

    var query = selectOnly(dataInstances)
      ..addColumns([syncState, count])
      ..where(byLevel);
    if (assignmentId != null) {
      query = query..where(dataInstances.assignment.equals(assignmentId));
    }
    query = query..groupBy([dataInstances.syncState]);

    return query.map((row) {
      final syncState = row.read(dataInstances.syncState)!;
      return SubmissionSyncStatusModel(
          syncState: InstanceSyncStatus.getValue(syncState),
          count: row.read(count)!);
    });
  }

  Selectable<SubmissionSummary> selectSubmissions(SubmissionsFilter filter) {
    final sub = alias(db.dataInstances, 's');
    final a = alias(db.assignments, 'a');
    final ou = alias(db.orgUnits, 'ou');
    final f = alias(db.formTemplates, 'f');
    final fv = alias(db.formTemplateVersions, 'fv');

    JoinedSelectStatement<HasResultSet, dynamic> query = select(sub).join([
      innerJoin(a, a.id.equalsExp(sub.assignment)),
      innerJoin(ou, a.orgUnit.equalsExp(ou.id)),
      innerJoin(fv, fv.id.equalsExp(sub.templateVersion)),
      innerJoin(f, f.id.equalsExp(fv.template)),
    ])
      ..where(sub.formTemplate.equals(filter.formId));

    if (filter.assignmentId != null) {
      query.where(a.id.equals(filter.assignmentId!));
    }

    if (filter.syncState != null) {
      query.where(sub.syncState.equals(filter.syncState!.name));
    }

    if (filter.searchTerm.isNotEmpty) {
      final pattern = '%${filter.searchTerm.toLowerCase()}%';
      query.where(ou.name.like(pattern) | ou.code.like(pattern));
    }

    if (!filter.includeDeleted) {
      query.where(sub.deleted.equals(false));
    }

    // Apply sorting based on the filter
    if (filter.sortColumn != null) {
      query.orderBy([
        OrderingTerm(
          expression: _getColumnExpression(filter.sortColumn!),
          mode: filter.sortAscending ? OrderingMode.asc : OrderingMode.desc,
        ),
      ]);
    }

    if (filter.paged) {
      query = query
        ..limit(filter.pageSize, offset: filter.page * filter.pageSize);
    }

    // Map rows to model
    return query.map((row) {
      final submission = row.readTable(sub);
      final orgUnit = row.readTable(ou);
      final form = row.readTable(f);
      final FormTemplateVersion formVersion = row.readTable(fv);

      return SubmissionSummary(
          id: submission.id,
          assignment: submission.assignment,
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
          submittedAt: submission.createdDate,
          syncStatus: submission.syncState,
          formVersionId: formVersion.id,
          createdDate: submission.createdDate,
          lastModifiedDate: submission.lastModifiedDate,
          dataMap: (submission.formData ?? {}).lock,
          formData: rSdkLocator<SubmissionListAggregator>()
              .extractValues(
                  submission.formData ?? {},
                  Template.buildTree(fieldsAndSections: [
                    ...formVersion.fields,
                    ...formVersion.sections
                  ]))
              .lock);
    });
  }

  // Inside your DataInstancesDao
  Selectable<int> countSubmissions(SubmissionsFilter filter) {
    final sub = alias(db.dataInstances, 's');
    final a = alias(db.assignments, 'a');
    final ou = alias(db.orgUnits, 'ou');
    final f = alias(db.formTemplates, 'f');
    final fv = alias(db.formTemplateVersions, 'fv');

    JoinedSelectStatement<HasResultSet, dynamic> countQuery = select(sub).join([
      innerJoin(a, a.id.equalsExp(sub.assignment)),
      innerJoin(ou, a.orgUnit.equalsExp(ou.id)),
      innerJoin(fv, fv.id.equalsExp(sub.templateVersion)),
      innerJoin(f, f.id.equalsExp(fv.template)),
    ])
      ..where(sub.formTemplate.equals(filter.formId));

    // Apply the same filtering logic as in selectSubmissions
    countQuery.where(sub.formTemplate.equals(filter.formId));

    if (filter.assignmentId != null) {
      countQuery.where(a.id.equals(filter.assignmentId!));
    }

    if (filter.syncState != null) {
      countQuery.where(sub.syncState.equals(filter.syncState!.name));
    }

    if (filter.searchTerm.isNotEmpty) {
      final pattern = '%${filter.searchTerm.toLowerCase()}%';
      countQuery.where(ou.name.like(pattern) | ou.code.like(pattern));
    }

    if (!filter.includeDeleted) {
      countQuery.where(sub.deleted.equals(false));
    }

    // Use countAll() to get the number of rows
    countQuery.addColumns([countAll()]);

    // Get the result and return the count
    // final result = await countQuery.getSingle();
    // return result.read(countAll());
    return countQuery.map((row) => row.read(countAll()) ?? 0);
  }

  Future<FormTemplateModel> getTemplateByVersionOrLatest(
      {String? templateId, String? versionId}) async {
    assert(templateId != null || versionId != null);
    var query = attachedDatabase.managers.formTemplateVersions
        .withReferences((prefetch) => prefetch(template: true));

    if (versionId != null) {
      query = query.filter((f) => f.id(versionId));
    } else {
      query = query.filter((f) => f.template.id(templateId));
    }

    final List<(FormTemplateVersion, $$FormTemplateVersionsTableReferences)>
        formTemplateWithRefs =
        await query.orderBy((o) => o.versionNumber.desc()).limit(1).get();
    final (templateVersion, refs) = formTemplateWithRefs.first;

    final formTemplate = refs.template.prefetchedData!.first;

    return FormTemplateModel(
      id: formTemplate.id,
      name: formTemplate.name,
      versionUid: templateVersion.id,
      label: formTemplate.label,
      description: formTemplate.description,
      versionNumber: templateVersion.versionNumber,
      fields: templateVersion.fields.build(),
      sections: templateVersion.sections.build(),
    );
  }

  Expression<Object> _getColumnExpression(String sortColumnName) {
    switch (sortColumnName) {
      case 'syncStatus':
        return dataInstances.syncState;
      case 'createdDate':
        return dataInstances.createdDate;
      case 'lastModifiedDate':
        return dataInstances.lastModifiedDate;
      default:
        return dataInstances.id; // Or some default column
    }
  }

  @override
  $DataInstancesTable get table => dataInstances;
}
