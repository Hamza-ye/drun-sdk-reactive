import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/datarun/utilities/date_utils.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/chv_register.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.DATA)
class ChvRegisterQuery extends SyncableQuery<ChvRegister> {
  ChvRegisterQuery({Database? database}) : super(database: database);

  @override
  Future create() async {
    ChvRegister event = ChvRegister(
        activity: this.activity,
        team: this.team,
        status: 'ACTIVE',
        dirty: true,
        synced: false,
        deleted: false,
        startEntryTime: DateUtils.databaseDateFormat().format(DateTime.now()));



    this.data = event;

    await this.save();

    return event;
  }

  @override
  Future setDataAndSave(ChvRegister data) {
    return ChvRegisterQuery().setData(data).save();
  }
}
