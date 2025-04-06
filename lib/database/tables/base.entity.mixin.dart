import 'package:drift/drift.dart';

mixin BaseTableMixin on Table {
  TextColumn get id => text()();

  DateTimeColumn get lastModifiedDate =>
      dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get createdDate =>
      dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
