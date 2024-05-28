import 'package:d2_remote/modules/warehouse/queries/warehouse.query.dart';

class WarehouseModule {
  static createTables() async {
    await WarehouseQuery().createTable();
  }

  WarehouseQuery get warehouse => WarehouseQuery();
}
