import 'dart:convert';

import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/sync_summary.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/use_cases/upload_submissions/data_submission.extension.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.dataSubmission)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class DataSubmissionDatasource
    extends BaseDataSource<$DataSubmissionsTable, DataSubmission>
    implements MetaDataSource<DataSubmission> {
  DataSubmissionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.dataSubmissions);

  String get pathPostfix => '/objects${super.pathPostfix}';

  @override
  String get resourceName => 'dataSubmission';

  @override
  DataSubmission fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final form = data['form'];
    final version = data['version'];
    final String formId = form != null && version != null
        ? '${form}_$version'
        : data['formVersion'];
    final assignment = data['assignment'];
    final orgUnit = data['orgUnit'];
    final team = data['team'];
    return DataSubmission.fromJson({
      ...data,
      'status': InstanceSyncStatus.synced.name,
      'progressStatus': data['status'],
      'form': formId,
      'assignment': assignment,
      'orgUnit': orgUnit,
      'team': team,
    }, serializer: serializer);
  }

  Future<List<DataSubmission>> upload(List<String> uids) async {
    List<DataSubmission> submissions = await db.managers.dataSubmissions
        .filter((f) => f.syncState
            .isIn([InstanceSyncStatus.finalized, InstanceSyncStatus.syncFailed]))
        .get();

    List<String> syncableEntityIds = [];
    List<String> syncableTeamIds = [];
    List<String> syncableAssignments = [];

    submissions.forEach((submission) {
      syncableEntityIds.add(submission.id);

      syncableAssignments.removeWhere((id) => id == submission.flowInstance);
      if (submission.flowInstance != null) {
        syncableAssignments.add(submission.flowInstance!);
      }

      syncableTeamIds.removeWhere((id) => id == submission.team);
      if (submission.team != null) {
        syncableTeamIds.add(submission.team!);
      }
    });

    final uploadPayload = submissions.map((submission) {
      return submission.toUpload();
    }).toList();

    // final resourcePath = '/${apiVersionPath}/$resourceName/bulk';
    final resource = '$resourceName/bulk';

    final response = await apiClient.request(
        resourceName: resource, data: uploadPayload, method: 'post');

    SyncSummary summary = SyncSummary.fromJson(response.data);
    logDebug(jsonEncode(uploadPayload.first), data: {"data": uploadPayload});

    final List<DataSubmission> queue = [];

    for (var submission in submissions) {
      final syncFailed = summary.failed.containsKey(submission.id);
      final syncCreated = summary.created.contains(submission.id);
      final syncUpdated = summary.updated.contains(submission.id);
      DataSubmission newEntity = submission;
      if (syncCreated || syncUpdated) {
        newEntity = submission.copyWith(
            syncState: InstanceSyncStatus.synced,
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
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, queue);
        });
      });
    }

    return queue;
  }
}
