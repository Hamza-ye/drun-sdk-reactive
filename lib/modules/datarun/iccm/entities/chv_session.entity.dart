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
  int? peopleItns;

  @Column(nullable: true)
  int? peopleBreadingSites;

  @Column(nullable: true)
  int? peopleTransmissionPrevention;

  @Column(nullable: true)
  String? comment;

  ChvSession(
      {String? id,
      String? uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? code,
      this.subject,
      this.sessionDate,
      this.sessions,
      this.peopleItns,
      this.peopleBreadingSites,
      this.peopleTransmissionPrevention,
      this.comment,

      /// Syncable
      required dynamic form,
      required int version,
      bool? deleted,
      bool? synced,
      bool? syncFailed,
      String? lastSyncDate,
      String? lastSyncMessage,
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
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,

            /// Syncable
            form: form,
            version: version,
            deleted: deleted,
            synced: synced,
            syncFailed: syncFailed,
            lastSyncDate: lastSyncDate,
            lastSyncMessage: lastSyncMessage,
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
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        subject: json['subject'],
        sessionDate: json['sessionDate'],
        sessions: json['sessions'],
        peopleItns: json['peopleItns'],
        peopleBreadingSites: json['peopleBreadingSites'],
        peopleTransmissionPrevention: json['peopleTransmissionPrevention'],
        comment: json['comment'],
        lastSyncMessage: json['lastSyncMessage'],

        /// Syncable
        form: json['form'],
        version: json['version'],
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
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['lastSyncMessage'] = this.lastSyncMessage;
    data['name'] = this.name;
    data['code'] = this.code;
    data['subject'] = this.subject;
    data['peopleItns'] = this.peopleItns;
    data['peopleBreadingSites'] = this.peopleBreadingSites;
    data['peopleTransmissionPrevention'] = this.peopleTransmissionPrevention;
    data['sessions'] = this.sessions;
    data['team'] = this.team;
    data['sessionDate'] = this.sessionDate;

    /// Syncable
    data['form'] = this.form;
    data['version'] = this.version;
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

  @override
  Map<String, dynamic> toUpload() {
    Map<String, dynamic> syncableToUpload = super.toUpload();

    syncableToUpload.addAll({
      "subject": this.subject,
      "peopleItns": this.peopleItns,
      "peopleBreadingSites": this.peopleBreadingSites,
      "peopleTransmissionPrevention": this.peopleTransmissionPrevention,
      "sessions": this.sessions,
      "sessionDate": this.sessionDate,
    });

    return syncableToUpload;
  }
}
