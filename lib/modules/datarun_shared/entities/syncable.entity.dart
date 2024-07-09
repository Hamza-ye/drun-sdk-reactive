import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
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

  @Column(nullable: true, type: ColumnType.TEXT)
  Geometry? geometry;

  // Relations
  @ManyToOne(table: DTeam, joinColumnName: 'team')
  dynamic team;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  SyncableEntity(
      {String? id,
      String? uid,
      this.name,
      this.code,
      String? lastModifiedDate,
      String? createdDate,
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
      "name": this.name,
      "createdDate": this.createdDate,
      "lastModifiedDate": this.lastModifiedDate,

      /// Syncable
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
      "status": this.status,
      "geometry": this.geometry != null ? this.geometry?.toJson() : null,
      "dirty": this.dirty,
    };

    if (activity != null) {
      if (activity.runtimeType == String) {
        syncableToUpload['activity'] = <String, dynamic>{
          'uid': activity
        };
      } else {
        syncableToUpload['activity'] = <String, dynamic>{
          'uid': activity['id']
        };
      }
    }

    if (team != null) {
      if (team.runtimeType == String) {
        syncableToUpload['team'] = <String, dynamic>{'uid': team};
      } else {
        syncableToUpload['team'] = <String, dynamic>{
          'uid': team['id']
        };
      }
    }

    return syncableToUpload;
  }
}
