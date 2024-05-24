import 'package:d2_remote/modules/data_run/itns/queries/itns_village.query.dart';
import 'package:d2_remote/modules/data_run/itns/queries/itns_village_houses_detail.query.dart';
import 'package:d2_remote/modules/data_run/itns/queries/progress_status.query.dart';

class DataRunModule {
  static createTables() async {
    await ProgressStatusQuery().createTable();
    await ItnsVillageQuery().createTable();
    await ItnsVillageHousesDetailQuery().createTable();
  }

  ProgressStatusQuery get progressStatus => ProgressStatusQuery();

  ItnsVillageQuery get itnsVillage => ItnsVillageQuery();

  ItnsVillageHousesDetailQuery get itnsVillageHousesDetail =>
      ItnsVillageHousesDetailQuery();
}
