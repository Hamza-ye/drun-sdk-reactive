import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
import 'package:d2_remote/shared/entities/base.entity.dart';

@AnnotationReflectable
class SyncableEntity extends BaseEntity {
  @Column(nullable: true)
  String? name;

  @Column(nullable: true)
  String? code;

  @Column(nullable: true)
  bool? deleted;

  @Column(nullable: true)
  bool? synced;

  @Column(nullable: true)
  bool? syncFailed;

  @Column(nullable: true, type: ColumnType.TEXT)
  EventImportSummary? lastSyncSummary;

  @Column(nullable: true)
  String? lastSyncDate;

  @Column(nullable: true)
  String? lastSyncMessage;

  @Column(nullable: true)
  String? startEntryTime;

  @Column(nullable: true)
  String? finishedEntryTime;

  /// Active, Completed
  @Column()
  String status;

  /// Active, Completed
  @Column(nullable: false, type: ColumnType.INTEGER)
  int version;

  @Column(nullable: true, type: ColumnType.TEXT)
  Geometry? geometry;

  // Relations
  @ManyToOne(table: DTeam, joinColumnName: 'team')
  dynamic team;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  @Column(nullable: true, type: ColumnType.TEXT)
  final String? form;

  @ManyToOne(table: FormVersion, joinColumnName: 'formVersion')
  dynamic formVersion;

  @Column(nullable: true)
  String? orgUnit;

  SyncableEntity(
      {String? id,
      String? uid,
      this.name,
      this.code,
      String? lastModifiedDate,
      String? createdDate,
      this.orgUnit,
      this.form,
      required this.formVersion,
      this.deleted,
      this.synced,
      this.syncFailed,
      this.lastSyncDate,
      this.lastSyncSummary,
      this.startEntryTime,
      this.finishedEntryTime,
      this.team,
      this.lastSyncMessage,
      required this.activity,
      this.geometry,
      required this.status,
      required this.version,
      required bool dirty})
      : super(
            id: uid,
            uid: uid,
            dirty: dirty,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate);

  Map<String, dynamic> toUpload() {
    Map<String, dynamic> syncableToUpload = {
      // "id": this.id,
      "uid": this.uid,
      "code": this.code,
      "formVersion": this.formVersion,
      "form": form,
      "name": this.name,
      "createdDate": this.createdDate,
      "lastModifiedDate": this.lastModifiedDate,

      /// Syncable
      "version": this.version,
      "deleted": this.deleted,
      "synced": this.synced,
      "lastSyncMassage": this.lastSyncMessage,
      "syncFailed": this.syncFailed,
      "lastSyncSummary": this.lastSyncSummary != null
          ? jsonEncode(
              (this.lastSyncSummary as EventImportSummary).responseSummary)
          : null,
      "lastSyncDate": this.lastSyncDate,
      "startEntryTime": this.startEntryTime,
      "finishedEntryTime": this.finishedEntryTime,
      "activity": this.activity,
      "team": this.team,
      "orgUnit": this.orgUnit,
      "status": this.status,
      "geometry": this.geometry != null ? this.geometry?.toJson() : null,
      "dirty": this.dirty,
    };

    if (activity != null && activity.runtimeType != String) {
      syncableToUpload['activity'] = activity['uid'];
    }

    if (team != null && team.runtimeType != String) {
      syncableToUpload['team'] = team['uid'];
    }

    if (form != null) {
      syncableToUpload['form'] = form;
    } else if (formVersion != null && formVersion.runtimeType != String) {
      // make formVersion['uid'];
      syncableToUpload['form'] = formVersion['formTemplate'];
    } else {
      final formAndVersion = (formVersion as String).split('_');
      syncableToUpload['form'] = formAndVersion[0];
    }

    return syncableToUpload;
  }
}
