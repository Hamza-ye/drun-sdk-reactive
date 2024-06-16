import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
import 'package:d2_remote/modules/datarun_shared/entities/syncable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'chvSession', apiResourceName: 'chvSessions')
class ChvSession extends SyncableEntity {
  @Column(nullable: true)
  String? sessionDate;

  @Column(nullable: true)
  String? subject;

  @Column(nullable: true)
  int? sessions;

  @Column(nullable: true)
  int? people;

  @Column(nullable: true)
  String? comment;

  ChvSession(
      {String? id,
      String? uid,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      this.subject,
      this.sessionDate,
      this.sessions,
      this.people,
      this.comment,

      /// Syncable
      bool? deleted,
      bool? synced,
      bool? syncFailed,
      String? lastSyncDate,
      EventImportSummary? lastSyncSummary,
      String? startEntryTime,
      String? finishedEntryTime,
      dynamic activity,
      dynamic team,
      required String status,
      Geometry? geometry,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,

            /// Syncable
            deleted: deleted,
            synced: synced,
            syncFailed: syncFailed,
            lastSyncDate: lastSyncDate,
            lastSyncSummary: lastSyncSummary,
            startEntryTime: startEntryTime,
            finishedEntryTime: finishedEntryTime,
            activity: activity,
            team: team,
            status: status,
            geometry: geometry,
            dirty: dirty);

  factory ChvSession.fromJson(Map<String, dynamic> json) {
    final dynamic lastSyncSummary = json['lastSyncSummary'] != null
        ? EventImportSummary.fromJson(jsonDecode(json['lastSyncSummary']))
        : null;
    final Geometry? geometry = json["geometry"] != null
        ? Geometry.fromJson(json["geometry"].runtimeType == String
            ? jsonDecode(json["geometry"])
            : json["geometry"])
        : null;
    return ChvSession(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        subject: json['subject'],
        sessionDate: json['sessionDate'],
        sessions: json['sessions'],
        people: json['people'],
        comment: json['comment'],

        /// Syncable
        deleted: json['deleted'],
        synced: json['synced'],
        syncFailed: json['syncFailed'],
        lastSyncSummary: lastSyncSummary,
        lastSyncDate: json['lastSyncDate'],
        startEntryTime: json['startEntryTime'],
        finishedEntryTime: json['finishedEntryTime'],
        activity: json['activity'] is String
            ? json['activity']
            : json['activity']['uid'],
        team: json['team'] is String ? json['team'] : json['team']['uid'],
        status: json['status'],
        geometry: geometry,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['name'] = this.name;
    data['code'] = this.code;
    data['subject'] = this.subject;
    data['people'] = this.people;
    data['comment'] = this.comment;
    data['team'] = this.team;
    data['sessionDate'] = this.sessionDate;

    /// Syncable
    data['deleted'] = this.deleted;
    data['synced'] = this.synced;
    data['syncFailed'] = this.syncFailed;
    data['lastSyncSummary'] = this.lastSyncSummary != null
        ? jsonEncode(
            (this.lastSyncSummary as EventImportSummary).responseSummary)
        : null;
    data['lastSyncDate'] = this.lastSyncDate;
    data['startEntryTime'] = this.startEntryTime;
    data['finishedEntryTime'] = this.finishedEntryTime;
    data['activity'] = activity;
    data['team'] = team;
    data['status'] = this.status;
    data['geometry'] =
        this.geometry != null ? jsonEncode(this.geometry?.geometryData) : null;
    data['dirty'] = this.dirty;
    return data;
  }

  static toUpload(ChvSession syncable) {
    Map<String, dynamic> syncableToUpload = {
      // "id": syncable.id,
      "uid": syncable.uid,
      "createdDate": syncable.created,
      "lastModifiedDate": syncable.lastUpdated,
      "name": syncable.name,
      "code": syncable.code,
      "subject": syncable.subject,
      "people": syncable.people,
      "comment": syncable.comment,
      "sessionDate": syncable.sessionDate,

      /// Syncable
      "deleted": syncable.deleted,
      "synced": syncable.synced,
      "syncFailed": syncable.syncFailed,
      "lastSyncSummary": syncable.lastSyncSummary != null
          ? jsonEncode(
              (syncable.lastSyncSummary as EventImportSummary).responseSummary)
          : null,
      "lastSyncDate": syncable.lastSyncDate,
      "startEntryTime": syncable.startEntryTime,
      "finishedEntryTime": syncable.finishedEntryTime,
      "team": syncable.team is String
          ? jsonEncode({'uid': syncable.team})
          : syncable.team,
      "activity": syncable.activity is String
          ? jsonEncode({'uid': syncable.activity})
          : syncable.activity,
      "status": syncable.status,
      "geometry":
          syncable.geometry != null ? syncable.geometry?.toJson() : null,
      "dirty": syncable.dirty,
    };

    return syncableToUpload;
  }
}
