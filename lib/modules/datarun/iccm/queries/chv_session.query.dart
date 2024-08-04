import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/datarun/utilities/date_utils.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/chv_session.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.DATA)
class ChvSessionQuery extends SyncableQuery<ChvSession> {
  ChvSessionQuery({Database? database}) : super(database: database);

  @override
  Future setDataAndSave(ChvSession data) {
    return ChvSessionQuery().setData(data).save();
  }

  @override
  Future create() async {
    ChvSession event = ChvSession(
        activity: this.activity,
        team: this.team,
        status: 'ACTIVE',
        form: form,
        version: version!,
        dirty: true,
        synced: false,
        deleted: false,
        startEntryTime:
            DateUtils.databaseDateFormat().format(DateTime.now().toUtc()));

    this.data = event;

    await this.save();

    return event;
  }
}
