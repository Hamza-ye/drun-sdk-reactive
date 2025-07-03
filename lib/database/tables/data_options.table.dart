import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'option_name_idx', columns: {#name})
@TableIndex(name: 'option_code_idx', columns: {#code}, unique: true)
class DataOptions extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get code => text().nullable()();

  TextColumn get optionSet => text().references(DataOptionSets, #id)();

  IntColumn get order => integer().clientDefault(() => 0)();

  TextColumn get label => text()
      .map(const NullAwareMapConverter())
      .nullable()
      .clientDefault(() => '{}')();

  TextColumn get translations => text()
      .map(const TranslationConverter())
      .nullable()
      .clientDefault(() => '[]')();

  @override
  Set<Column<Object>> get primaryKey => {id};

  @override
  List<Set<Column>> get uniqueKeys => [
        {optionSet, id},
        {optionSet, name}
      ];
}
