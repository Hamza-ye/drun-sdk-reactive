import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataOptions extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get optionSet => text().references(DataOptionSets, #id)();

  TextColumn get listName => text()();

  IntColumn get order => integer()();

  TextColumn get filterExpression => text().nullable()();

  TextColumn get label =>
      text().map(const MapConverter()).clientDefault(() => '{}')();

  TextColumn get properties => text().map(const MapConverter<dynamic>()).clientDefault(() => '{}')();
}
