import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
import 'package:d2_remote/modules/datarun_shared/entities/syncable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'chvRegister', apiResourceName: 'chvRegisters')
class ChvRegister extends SyncableEntity {
  // @ManyToOne(table: PatientInfo, joinColumnName: 'patient')
  // dynamic patient;

  @Column(nullable: true)
  String? gender;

  // @ManyToOne(table: DAssignment, joinColumnName: 'location')
  // dynamic location;

  @Column(nullable: true)
  String? locationName;

  @Column(nullable: true)
  String? visitDate;

  @Column(nullable: true, type: ColumnType.REAL)
  double? age;

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

  ChvRegister(
      {String? id,
      String? uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? code,
      this.gender,
      // fix in Ui When tha main field is
      // location set at adding new entity,
      // now it's the default behaviour
      // this.location,
      this.locationName,
      this.visitDate,
      this.age,
      this.pregnant,
      this.testResult,
      this.detectionType,
      this.severity,
      this.treatment,
      this.comment,

      /// Syncable
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

  factory ChvRegister.fromJson(Map<String, dynamic> json) {
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

    return ChvRegister(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        visitDate: json['visitDate'],
        pregnant: json['pregnant'],
        testResult: json['testResult'],
        detectionType: json['detectionType'],
        severity: json['severity'],
        treatment: json['treatment'],
        comment: json['comment'],

        /// Patient
        name: json['name'],
        age: json['age']?.toDouble(),
        gender: json['gender'],
        locationName: json['locationName'],
        // location: json['location'] != null
        //     ? json['location'] is String
        //         ? json['location']
        //         : json['location']['uid']
        //     : null,

        /// Syncable
        deleted: json['deleted'],
        synced: json['synced'],
        syncFailed: json['syncFailed'],
        lastSyncSummary: lastSyncSummary,
        lastSyncDate: json['lastSyncDate'],
        lastSyncMessage: json['lastSyncMessage'],
        startEntryTime: json['startEntryTime'],
        finishedEntryTime: json['finishedEntryTime'],
        activity: activity,
        team: json['team'] != null
            ? json['team'] is String
                ? json['team']
                : json['team']['uid']
            : null,
        status: json['status'],
        geometry: geometry,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['code'] = this.code;
    // data['patient'] = this.patient;
    data['visitDate'] = this.visitDate;
    data['pregnant'] = this.pregnant;
    data['testResult'] = this.testResult;
    data['detectionType'] = this.detectionType;
    data['severity'] = this.severity;
    data['treatment'] = this.treatment;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['comment'] = this.comment;

    data['age'] = this.age;
    data['gender'] = this.gender;
    // data['location'] = this.location;
    data['locationName'] = this.locationName;

    /// Syncable
    data['deleted'] = this.deleted;
    data['synced'] = this.synced;
    data['syncFailed'] = this.syncFailed;
    data['lastSyncSummary'] = this.lastSyncSummary != null
        ? jsonEncode(
            (this.lastSyncSummary as EventImportSummary).responseSummary)
        : null;
    data['lastSyncDate'] = this.lastSyncDate;
    data['lastSyncMessage'] = this.lastSyncMessage;
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
    // Use ChvRegister specific properties and call super.toUpload
    Map<String, dynamic> syncableToUpload = super.toUpload();

    // Add specific properties of ChvRegister
    syncableToUpload.addAll({
      // "location": this.location is String
      //     ? jsonEncode({'uid': this.location})
      //     : this.location,
      "locationName": this.locationName,
      "visitDate": this.visitDate,
      "gender": this.gender,
      "age": this.age,
      "pregnant": this.pregnant,
      "testResult": this.testResult,
      "detectionType": this.detectionType,
      "severity": this.severity,
      "treatment": this.treatment,
      "comment": this.comment,
    });

    return syncableToUpload;
  }
}
