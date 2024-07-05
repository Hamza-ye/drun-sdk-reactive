import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/chv_session.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ChvSessionQuery extends SyncableQuery<ChvSession> {

  ChvSessionQuery({Database? database}) : super(database: database);

  @override
  Future create() async {
    ChvSession event = ChvSession(
        activity: this.activity,
        team: this.team,
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
