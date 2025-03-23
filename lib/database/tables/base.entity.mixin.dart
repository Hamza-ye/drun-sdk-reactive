import 'package:drift/drift.dart';

mixin BaseTableMixin on Table {
  late final id = text()();

  late final dirty = boolean()();

  late final lastModifiedDate = dateTime().withDefault(currentDateAndTime)();

  late final createdDate = dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
