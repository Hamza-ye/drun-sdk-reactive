import 'package:d_sdk/database/converters/translation.converter.dart';
import 'package:drift/drift.dart';

mixin BaseTableMixin on Table {
  late final id = text()();

  late final dirty = boolean()();

  late final lastModifiedDate = dateTime().withDefault(currentDateAndTime)();

  late final createdDate = dateTime().withDefault(currentDateAndTime)();

  /// List of Translations
  late final TextColumn optionSets =
      text().map(const TranslationConverter()).nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
