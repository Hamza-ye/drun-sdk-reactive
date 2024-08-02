import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
import 'package:d2_remote/modules/datarun_shared/entities/syncable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'chvSupply', apiResourceName: 'chvSupplies')
class ChvSupply extends SyncableEntity {
  @Column(nullable: true)
  String? item;

  @Column(nullable: true, type: ColumnType.INTEGER)
  int? previousBalance;

  @Column(nullable: true, type: ColumnType.INTEGER)
  int? newSupply;

  @Column(nullable: true, type: ColumnType.INTEGER)
  int? consumed;

  @Column(nullable: true, type: ColumnType.INTEGER)
  int? lostCorrupt;

  @Column(nullable: true)
  int? remaining;

  @Column(nullable: true)
  String? comment;

  ChvSupply(
      {String? id,
      String? uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? code,
      this.item,
      this.previousBalance,
      this.newSupply,
      this.consumed,
      this.lostCorrupt,
      this.remaining,
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

  factory ChvSupply.fromJson(Map<String, dynamic> json) {
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

    return ChvSupply(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        item: json['item'],
        previousBalance: json['previousBalance'],
        newSupply: json['newSupply'],
        consumed: json['consumed'],
        lostCorrupt: json['lostCorrupt'],
        remaining: json['remaining'],
        comment: json['comment'],

        /// Patient
        name: json['name'],

        /// Syncable
        form: json['form'],
        version: json['version'],
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
    data['item'] = this.item;
    data['previousBalance'] = this.previousBalance;
    data['newSupply'] = this.newSupply;
    data['consumed'] = this.consumed;
    data['lostCorrupt'] = this.lostCorrupt;
    data['remaining'] = this.remaining;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['comment'] = this.comment;

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
    Map<String, dynamic> syncableToUpload = super.toUpload();

    syncableToUpload.addAll({
      "item": this.item,
      "previousBalance": this.previousBalance,
      "newSupply": this.newSupply,
      "consumed": this.consumed,
      "lostCorrupt": this.lostCorrupt,
      "remaining": this.remaining,
      "comment": this.comment,
    });

    return syncableToUpload;
  }
}
