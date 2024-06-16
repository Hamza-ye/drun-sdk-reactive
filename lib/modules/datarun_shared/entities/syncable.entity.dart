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
      String? lastUpdated,
      String? created,
      this.deleted,
      this.synced,
      this.syncFailed,
      this.lastSyncDate,
      this.lastSyncSummary,
      this.startEntryTime,
      this.finishedEntryTime,
      this.team,
      required this.activity,
      this.geometry,
      required this.status,
      required bool dirty})
      : super(
            id: uid,
            uid: uid,
            dirty: dirty,
            created: created,
            lastUpdated: lastUpdated);

  static toUpload(SyncableEntity syncable) {
    throw UnimplementedError();
  }
}
