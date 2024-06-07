import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/datarun/shared/entities/syncable.entity.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';

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

  @Column(nullable: true)
  String? startEntryTime;

  @ManyToOne(table: DTeam, joinColumnName: 'team')
  dynamic team;

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
      this.startEntryTime,
      this.team,

      /// Syncable
      bool? deleted,
      // bool? synced,
      bool? syncFailed,
      String? lastSyncDate,
      EventImportSummary? lastSyncSummary,
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
            // synced: synced,
            syncFailed: syncFailed,
            lastSyncDate: lastSyncDate,
            lastSyncSummary: lastSyncSummary,
            dirty: dirty);

  factory ChvSession.fromJson(Map<String, dynamic> json) {
    final dynamic lastSyncSummary = json['lastSyncSummary'] != null
        ? EventImportSummary.fromJson(jsonDecode(json['lastSyncSummary']))
        : null;
    return ChvSession(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],

        /// Syncable
        deleted: json['deleted'],
        // synced: json['synced'],
        syncFailed: json['syncFailed'],
        lastSyncSummary: lastSyncSummary,
        lastSyncDate: json['lastSyncDate'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        subject: json['subject'],
        sessionDate: json['sessionDate'],
        sessions: json['sessions'],
        people: json['people'],
        comment: json['comment'],
        startEntryTime: json['startEntryTime'],
        team: json['team'] is String ? json['team'] : json['team']['uid'],
        code: json['code'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;

    /// Syncable
    data['deleted'] = this.deleted;
    // 'synced': this.synced,
    data['syncFailed'] = this.syncFailed;
    data['lastSyncSummary'] = this.lastSyncSummary != null
        ? jsonEncode(
            (this.lastSyncSummary as EventImportSummary).responseSummary)
        : null;
    data['lastSyncDate'] = this.lastSyncDate;
    //
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['name'] = this.name;
    data['code'] = this.code;
    data['subject'] = this.subject;
    data['people'] = this.people;
    data['comment'] = this.comment;
    data['team'] = this.team;
    data['sessionDate'] = this.sessionDate;
    data['startEntryTime'] = this.startEntryTime;
    data['dirty'] = this.dirty;
    return data;
  }

  static toUpload(ChvSession syncable) {
    Map<String, dynamic> syncableToUpload = {
      "id": syncable.id,
      "uid": syncable.uid,

      /// Syncable
      "deleted": syncable.deleted,
      // 'synced': this.synced,
      "syncFailed": syncable.syncFailed,
      "lastSyncSummary": syncable.lastSyncSummary != null
          ? jsonEncode(
              (syncable.lastSyncSummary as EventImportSummary).responseSummary)
          : null,
      "lastSyncDate": syncable.lastSyncDate,
      //
      "createdDate": syncable.created,
      "lastModifiedDate": syncable.lastUpdated,
      "name": syncable.name,
      "code": syncable.code,
      "subject": syncable.subject,
      "people": syncable.people,
      "comment": syncable.comment,
      "team": syncable.team is String
          ? jsonEncode({'uid': syncable.team})
          : syncable.team,
      "sessionDate": syncable.sessionDate,
      "startEntryTime": syncable.startEntryTime,
      "dirty": syncable.dirty,
    };

    // if (syncable.team != null && syncable.team.runtimeType != String) {
    //   syncableToUpload['team'] = syncable.team['id'];
    // }

    return syncableToUpload;
  }
}
