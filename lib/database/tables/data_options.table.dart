import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'data_option_order_idx', columns: {#order})
class DataOptions extends Table with BaseTableMixin {
  TextColumn get optionSet => text().references(DataOptionSets, #id)();

  IntColumn get order => integer().clientDefault(() => 0)();
}
