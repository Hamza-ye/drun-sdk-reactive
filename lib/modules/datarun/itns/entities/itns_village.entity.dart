import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/datarun/itns/entities/itns_village_houses_detail.entity.dart';
import 'package:d2_remote/modules/datarun/itns/entities/progress_status.entity.dart';
import 'package:d2_remote/modules/datarun/shared/entities/syncable.entity.dart';
import 'package:d2_remote/modules/metadatarun/assignment/entities/d_assignment.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'itnsVillage', apiResourceName: 'itnsVillages')
class ItnsVillage extends SyncableEntity {
  @Column(nullable: true)
  String? workDayDate;

  @Column(nullable: true)
  String? surveytype;

  @Column(nullable: true)
  String? otherReasonComment;

  @Column(nullable: true)
  String? reasonNotcomplete;

  @Column(nullable: true)
  String? settlement;

  @Column(nullable: true)
  String? settlementName;

  @Column(nullable: true)
  String? tlCommenet;

  @Column(nullable: true)
  int? timeSpentHours;

  @Column(nullable: true)
  int? timeSpentMinutes;

  @Column(nullable: true)
  String? difficulties;

  @Column(nullable: true)
  String? locationCaptured;

  @Column(nullable: true)
  String? locationCaptureTime;

  @Column(nullable: true)
  String? untargetingOtherSpecify;

  @Column(nullable: true)
  String? otherVillageName;

  @Column(nullable: true)
  String? otherVillageCode;

  @Column(nullable: true)
  int? otherTeamNo;

  @ManyToOne(table: DAssignment, joinColumnName: 'assignment')
  dynamic assignment;

  @ManyToOne(table: ProgressStatus, joinColumnName: 'progressStatus')
  dynamic progressStatus;

  @OneToMany(table: ItnsVillageHousesDetail)
  List<ItnsVillageHousesDetail>? houseDetails;

  ItnsVillage(
      {String? id,
      String? uid,
      this.workDayDate,
      this.surveytype,
      this.otherReasonComment,
      this.reasonNotcomplete,
      this.settlement,
      this.settlementName,
      this.tlCommenet,
      this.timeSpentHours,
      this.timeSpentMinutes,
      this.difficulties,
      this.locationCaptured,
      this.locationCaptureTime,
      this.untargetingOtherSpecify,
      this.otherVillageName,
      this.otherVillageCode,
      this.otherTeamNo,
      this.assignment,
      this.progressStatus,
      this.houseDetails,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,

      /// Syncable
      bool? deleted,
      bool? synced,
      bool? syncFailed,
      String? lastSyncDate,
      EventImportSummary? lastSyncSummary,
      String? startEntryTime,
      String? finishedEntryTime,
      dynamic team,
      dynamic activity,
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
            dirty: dirty);

  factory ItnsVillage.fromJson(Map<String, dynamic> json) {
    final dynamic lastSyncSummary = json['lastSyncSummary'] != null
        ? EventImportSummary.fromJson(jsonDecode(json['lastSyncSummary']))
        : null;

    return ItnsVillage(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        workDayDate: json['workDayDate'],
        surveytype: json['surveytype'],
        otherReasonComment: json['otherReasonComment'],
        reasonNotcomplete: json['reasonNotcomplete'],
        settlement: json['settlement'],
        settlementName: json['settlementName'],
        tlCommenet: json['tlCommenet'],
        timeSpentHours: json['timeSpentHours'],
        timeSpentMinutes: json['timeSpentMinutes'],
        difficulties: json['difficulties'],
        locationCaptured: json['locationCaptured'],
        locationCaptureTime: json['locationCaptureTime'],
        untargetingOtherSpecify: json['untargetingOtherSpecify'],
        otherVillageName: json['otherVillageName'],
        otherVillageCode: json['otherVillageCode'],
        otherTeamNo: json['otherTeamNo'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        houseDetails: (json['houseDetails'] ?? [])
            .map<ItnsVillageHousesDetail>(
                (houseDetail) => ItnsVillageHousesDetail.fromJson({
                      ...houseDetail,
                      'itnsVillage': json['uid'],
                      'dirty': json['dirty'] ?? false,
                    }))
            .toList(),
        assignment: json['assignment'] is String
            ? json['assignment']
            : json['assignment']['uid'],
        progressStatus: json['progressStatus'] is String
            ? json['progressStatus']
            : json['progressStatus']['uid'],

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
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['name'] = name;
    data['createdDate'] = created;
    data['lastModifiedDate'] = lastUpdated;
    data['houseDetails'] = this.houseDetails;
    data['workDayDate'] = workDayDate;
    data['surveytype'] = surveytype;
    data['otherReasonComment'] = otherReasonComment;
    data['reasonNotcomplete'] = reasonNotcomplete;
    data['settlement'] = settlement;
    data['settlementName'] = settlementName;
    data['tlCommenet'] = tlCommenet;
    data['timeSpentHours'] = timeSpentHours;
    data['timeSpentMinutes'] = timeSpentMinutes;
    data['difficulties'] = difficulties;
    data['locationCaptured'] = locationCaptured;
    data['locationCaptureTime'] = locationCaptureTime;
    data['untargetingOtherSpecify'] = untargetingOtherSpecify;
    data['otherVillageName'] = otherVillageName;
    data['otherVillageCode'] = otherVillageCode;
    data['otherTeamNo'] = otherTeamNo;
    data['assignment'] = assignment;
    data['progressStatus'] = progressStatus;

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
    data['dirty'] = dirty;
    return data;
  }

  static toUpload(ItnsVillage syncable) {
    Map<String, dynamic> syncableToUpload = {
      // "id": syncable.id,
      "uid": syncable.uid,
      "name": syncable.name,
      "code": syncable.code,
      "createdDate": syncable.created,
      "lastModifiedDate": syncable.lastUpdated,
      "workDayDate": syncable.workDayDate,
      "surveytype": syncable.surveytype,
      "otherReasonComment": syncable.otherReasonComment,
      "reasonNotcomplete": syncable.reasonNotcomplete,
      "settlement": syncable.settlement,
      "settlementName": syncable.settlementName,
      "tlCommenet": syncable.tlCommenet,
      "timeSpentHours": syncable.timeSpentHours,
      "timeSpentMinutes": syncable.timeSpentMinutes,
      "difficulties": syncable.difficulties,
      "locationCaptured": syncable.locationCaptured,
      "locationCaptureTime": syncable.locationCaptureTime,
      "untargetingOtherSpecify": syncable.untargetingOtherSpecify,
      "otherVillageName": syncable.otherVillageName,
      "otherVillageCode": syncable.otherVillageCode,
      "otherTeamNo": syncable.otherTeamNo,
      "assignment": syncable.assignment is String
          ? jsonEncode({'uid': syncable.assignment})
          : syncable.assignment,
      "progressStatus": syncable.progressStatus is String
          ? jsonEncode({'uid': syncable.progressStatus})
          : syncable.progressStatus,

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
      "activity": syncable.activity is String
          ? jsonEncode({'uid': syncable.activity})
          : syncable.activity,
      "team": syncable.team is String
          ? jsonEncode({'uid': syncable.team})
          : syncable.team,
      "dirty": syncable.dirty,
    };

    return syncableToUpload;
  }
}
