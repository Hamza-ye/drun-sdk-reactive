import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/chv_register.entity.dart';
import 'package:d2_remote/modules/datarun/shared/entities/syncable.entity.dart';
import 'package:d2_remote/modules/metadatarun/assignment/entities/d_assignment.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'patientInfo', apiResourceName: 'patientInfo')
class PatientInfo extends SyncableEntity {
  @Column(nullable: true)
  int? age;

  @Column(nullable: true)
  String? gender;

  @ManyToOne(table: DAssignment, joinColumnName: 'location')
  dynamic location;

  @OneToMany(table: ChvRegister)
  List<ChvRegister>? chvRegisters;

  PatientInfo(
      {String? id,
      String? uid,
      String? created,
      String? lastUpdated,
      required String? name,
      String? code,
      String? displayName,
      this.age,
      this.gender,
      this.location,
      this.chvRegisters,

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

  factory PatientInfo.fromJson(Map<String, dynamic> json) {
    final dynamic lastSyncSummary = json['lastSyncSummary'] != null
        ? EventImportSummary.fromJson(jsonDecode(json['lastSyncSummary']))
        : null;
    final activity = json['activity'] != null
        ? json['activity'] is String
            ? json['activity']
            : json['activity']['uid']
        : null;

    final Geometry? geometry = json["geometry"] != null
        ? Geometry.fromJson(json["geometry"].runtimeType == String
            ? jsonDecode(json["geometry"])
            : json["geometry"])
        : null;
    return PatientInfo(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        code: json['code'],
        age: json['age'],
        location: json['location'] is String
            ? json['location']
            : json['location']['uid'],
        gender: json['gender'],
        chvRegisters: (json['chvRegisters'] ?? [])
            .map<ChvRegister>((chvRegisters) => ChvRegister.fromJson({
                  ...chvRegisters,
                  'patient': json['uid'],
                  'dirty': json['dirty'] ?? false,
                }))
            .toList(),

        /// Syncable
        deleted: json['deleted'],
        synced: json['synced'],
        syncFailed: json['syncFailed'],
        lastSyncSummary: lastSyncSummary,
        lastSyncDate: json['lastSyncDate'],
        startEntryTime: json['startEntryTime'],
        finishedEntryTime: json['finishedEntryTime'],
        activity: activity,
        team: json['team'],
        status: json['status'],
        geometry: geometry,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['name'] = this.name;
    data['lastUpdated'] = this.lastUpdated;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['location'] = this.location;
    data['chvRegisters'] = this.chvRegisters;

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

  static toUpload(PatientInfo syncable) {
    Map<String, dynamic> syncableToUpload = {
      // "id": syncable.id,
      "uid": syncable.uid,
      "code": syncable.code,
      "name": syncable.name,
      "createdDate": syncable.created,
      "lastModifiedDate": syncable.lastUpdated,
      "age": syncable.age,
      "gender": syncable.gender,
      "location": syncable.location is String
          ? jsonEncode({'uid': syncable.location})
          : syncable.location,
      "chvRegisters": syncable.chvRegisters ?? [],

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
      "activity": syncable.activity != null
          ? syncable.activity is String
              ? jsonEncode({'uid': syncable.activity})
              : syncable.activity
          : null,
      "team": syncable.team is String
          ? jsonEncode({'uid': syncable.team})
          : syncable.team,
      "status": syncable.status,
      "geometry":
          syncable.geometry != null ? syncable.geometry?.toJson() : null,
      "dirty": syncable.dirty,
    };

    return syncableToUpload;
  }
}
