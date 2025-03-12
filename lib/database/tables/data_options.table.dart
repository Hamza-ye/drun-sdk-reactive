import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataOptions extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn optionSet = text().references(DataOptionSets, #id)();

  late final TextColumn listName = text()();

  late final IntColumn order = integer()();

  late final TextColumn filterExpression = text().nullable()();

  late final TextColumn label =
      text().map(const MapConverter<String>()).withDefault(Constant('{}'))();

  late final TextColumn properties =
      text().map(const MapConverter()).nullable()();
}
