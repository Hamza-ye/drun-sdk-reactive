import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
import 'package:d2_remote/shared/entities/base.entity.dart';

@AnnotationReflectable
class SyncableEntity extends BaseEntity {
  @Column(nullable: true)
  String? name;

  @Column(nullable: true)
  String? code;

  @Column(nullable: true)
  bool? deleted;

  // @Column(nullable: true)
  // bool? synced;

  @Column(nullable: true)
  bool? syncFailed;

  @Column(nullable: true, type: ColumnType.TEXT)
  EventImportSummary? lastSyncSummary;

  @Column(nullable: true)
  String? lastSyncDate;

  SyncableEntity(
      {String? id,
      String? uid,
      this.name,
      this.code,
      String? lastUpdated,
      String? created,
      this.deleted,
      // this.synced,
      this.syncFailed,
      this.lastSyncDate,
      this.lastSyncSummary,
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
