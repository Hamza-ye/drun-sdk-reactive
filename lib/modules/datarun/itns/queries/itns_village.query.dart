import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/itns/entities/itns_village.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ItnsVillageQuery extends SyncableQuery<ItnsVillage> {
  ItnsVillageQuery({Database? database}) : super(database: database);

  @override
  Future create() async {
    ItnsVillage event = ItnsVillage(
        activity: this.activity!,
        team: this.team!,
        status: 'ACTIVE',
        dirty: true,
        synced: false,
        deleted: false,
        startEntryTime: DateTime.now().toIso8601String().split(".")[0]);

    this.data = event;

    await this.save();

    return event;
  }
}
