import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/datarun/utilities/date_utils.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/chv_supply.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.DATA)
class ChvSupplyQuery extends SyncableQuery<ChvSupply> {
  ChvSupplyQuery({Database? database}) : super(database: database);

  @override
  Future setDataAndSave(ChvSupply data) {
    return ChvSupplyQuery().setData(data).save();
  }

  @override
  Future createSubmission(String form, int version) async {
    ChvSupply event = ChvSupply(
        activity: this.activity,
        team: this.team,
        status: 'ACTIVE',
        form: form,
        version: version,
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
