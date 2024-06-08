import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/patient_info.entity.dart';
import 'package:d2_remote/modules/datarun/shared/entities/syncable.entity.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'chvRegister', apiResourceName: 'chvRegisters')
class ChvRegister extends SyncableEntity {
  @ManyToOne(table: PatientInfo, joinColumnName: 'patient')
  dynamic patient;

  @ManyToOne(table: DTeam, joinColumnName: 'team')
  dynamic team;

  @Column(nullable: true)
  String? visitDate;

  @Column(nullable: true)
  int? age;

  @Column(nullable: true)
  bool? pregnant;

  @Column(nullable: true)
  String? testResult;

  @Column(nullable: true)
  String? detectionType;

  @Column(nullable: true)
  String? severity;

  @Column(nullable: true)
  String? treatment;

  @Column(nullable: true)
  String? comment;

  @Column(nullable: true)
  String? startEntryTime;

  ChvRegister(
      {String? id,
      String? uid,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      this.visitDate,
      this.age,
      this.pregnant,
      this.testResult,
      this.detectionType,
      this.severity,
      this.treatment,
      this.comment,
      this.startEntryTime,
      this.team,
      this.patient,

      /// Syncable
      bool? deleted,
      bool? synced,
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
            synced: synced,
            syncFailed: syncFailed,
            lastSyncDate: lastSyncDate,
            lastSyncSummary: lastSyncSummary,
            dirty: dirty);

  factory ChvRegister.fromJson(Map<String, dynamic> json) {
    final dynamic lastSyncSummary = json['lastSyncSummary'] != null
        ? EventImportSummary.fromJson(jsonDecode(json['lastSyncSummary']))
        : null;
    return ChvRegister(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],

        /// Syncable
        deleted: json['deleted'],
        synced: json['synced'],
        syncFailed: json['syncFailed'],
        lastSyncSummary: lastSyncSummary,
        lastSyncDate: json['lastSyncDate'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        visitDate: json['visitDate'],
        pregnant: json['pregnant'],
        testResult: json['testResult'],
        detectionType: json['detectionType'],
        severity: json['severity'],
        treatment: json['treatment'],
        comment: json['comment'],
        startEntryTime: json['startEntryTime'],
        team: json['team'] is String ? json['team'] : json['team']['uid'],
        patient: json['patient'] is String
            ? json['patient']
            : json['patient']['uid'],
        code: json['code'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastUpdated'] = this.lastUpdated;
    data['id'] = this.id;
    data['uid'] = this.uid;

    /// Syncable
    data['deleted'] = this.deleted;
    data['synced'] = this.synced;
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
    data['visitDate'] = this.visitDate;
    data['pregnant'] = this.pregnant;
    data['testResult'] = this.testResult;
    data['detectionType'] = this.detectionType;
    data['severity'] = this.severity;
    data['treatment'] = this.treatment;
    data['comment'] = this.comment;
    data['startEntryTime'] = this.startEntryTime;
    data['team'] = this.team;
    data['patient'] = this.patient;
    data['dirty'] = this.dirty;
    return data;
  }

  static toUpload(ChvRegister syncable) {
    Map<String, dynamic> syncableToUpload = {
      // "id": syncable.id,
      "uid": syncable.uid,
      /// Syncable
      "deleted": syncable.deleted,
      'synced': syncable.synced,
      "syncFailed": syncable.syncFailed,
      "lastSyncSummary": syncable.lastSyncSummary != null
          ? jsonEncode(
              (syncable.lastSyncSummary as EventImportSummary).responseSummary)
          : null,
      "lastSyncDate": syncable.lastSyncDate,
      //
      "name": syncable.name,
      "code": syncable.code,
      "visitDate": syncable.visitDate,
      "pregnant": syncable.pregnant,
      "testResult": syncable.testResult,
      "detectionType": syncable.detectionType,
      "severity": syncable.severity,
      "treatment": syncable.treatment,
      "comment": syncable.comment,
      "startEntryTime": syncable.startEntryTime,
      "team": syncable.team,
      "patient": syncable.patient,
      "createdDate": syncable.created,
      "lastModifiedDate": syncable.lastUpdated,
      "dirty": syncable.dirty,
    };

    if (syncable.team != null && syncable.team.runtimeType != String) {
      syncableToUpload['team'] = syncable.team['id'];
    }

    if (syncable.patient != null && syncable.patient.runtimeType != String) {
      syncableToUpload['patient'] = syncable.patient['id'];
    }

    return syncableToUpload;
  }
}
