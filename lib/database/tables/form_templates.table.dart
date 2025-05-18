import 'package:d_sdk/database/converters/converters.dart';
import 'package:drift/drift.dart';

class FormTemplates extends Table {
  TextColumn get id => text()();

  /// current form version uid
  TextColumn get formVersion => text()();

  /// current form version number
  IntColumn get versionNumber => integer()();

  TextColumn get name => text()();

  TextColumn get label => text()
      .map(const NullAwareMapConverter())
      .nullable()
      .clientDefault(() => '{}')();

  TextColumn get description => text().nullable()();

  // BoolColumn get disabled => boolean().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
