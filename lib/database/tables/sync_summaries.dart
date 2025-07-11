import 'package:drift/drift.dart';

class SyncSummaries extends Table {
  /// e.g. "activities", "teams"
  TextColumn get entity => text()();

  DateTimeColumn get lastSync => dateTime().withDefault(currentDateAndTime)();

  IntColumn get successCount => integer().withDefault(const Constant(0))();

  IntColumn get failureCount => integer().withDefault(const Constant(0))();

  /// JSON‑encoded list of error messages
  TextColumn get errorsJson => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {entity};
}
