import 'dart:convert';

import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/sync_summary.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:d_sdk/use_cases/upload_submissions/data_submission.extension.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(120)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class DataSubmissionDatasource
    extends BaseDataSource<$DataSubmissionsTable, DataSubmission>
    implements MetaDataSource<DataSubmission> {
  AppEnvironmentInstance _environmentInstance;

  DataSubmissionDatasource(
      {required super.apiClient,
      required DbManager dbManager,
      required AppEnvironmentInstance environmentInstance})
      : this._environmentInstance = environmentInstance,
        super(dbManager: dbManager, table: dbManager.db.dataSubmissions);

  @override
  String get apiResourceName => 'dataSubmission';

  @override
  DataSubmission fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final form = data['form'];
    final version = data['version'];
    final fVersion = data['formVersion'];
    final String formVersion = form != null && version != null
        ? '${form}_$version'
        : fVersion;
    final assignment =
        data['assignment']['uid'] ?? data['assignment']['id'].toString();
    final orgUnit =
        data['orgUnit']?['uid'] ?? data['orgUnit']?['id']?.toString();
    final team = data['team']?['uid'] ?? data['team']?['id']?.toString();
    return DataSubmission.fromJson({
      ...data,
      'status': SubmissionStatus.synced.name,
      'formVersion': formVersion,
      'form': form,
      'assignment': assignment,
      'orgUnit': orgUnit,
      'team': team,
    }, serializer: serializer);
  }

  Future<List<DataSubmission>> upload(List<String> uids) async {
    List<DataSubmission> submissions = await db.managers.dataSubmissions
        .filter((f) => f.status
            .isIn([SubmissionStatus.finalized, SubmissionStatus.syncFailed]))
        .get();

    List<String> syncableEntityIds = [];
    List<String> syncableTeamIds = [];
    List<String> syncableAssignments = [];

    submissions.forEach((submission) {
      syncableEntityIds.add(submission.id);

      syncableAssignments.removeWhere((id) => id == submission.assignment);
      if (submission.assignment != null) {
        syncableAssignments.add(submission.assignment!);
      }

      syncableTeamIds.removeWhere((id) => id == submission.team);
      if (submission.team != null) {
        syncableTeamIds.add(submission.team!);
      }
    });

    final uploadPayload = submissions.map((submission) {
      return submission.toUpload();
    }).toList();

    final response = await apiClient.request(
        resourceName: '${_environmentInstance.apiPath}/${apiResourceName}/bulk',
        method: 'post',
        data: uploadPayload);

    SyncSummary summary = SyncSummary.fromJson(response.data);
    logDebug(jsonEncode(uploadPayload.first), data: {"data": uploadPayload});

    final List<DataSubmission> queue = [];
    // num availableItemCount = 0;

    for (var submission in submissions) {
      final syncFailed = summary.failed.containsKey(submission.id);
      final syncCreated = summary.created.contains(submission.id);
      final syncUpdated = summary.updated.contains(submission.id);
      DataSubmission newEntity = submission;
      if (syncCreated || syncUpdated) {
        newEntity = submission.copyWith(
            status:Value( SubmissionStatus.synced),
            lastSyncMessage: Value(null),
            lastSyncDate: Value(DateTime.now().toUtc()));
        // availableItemCount++;
      } else if (syncFailed) {
        newEntity = submission.copyWith(
            status: Value(SubmissionStatus.syncFailed),
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
