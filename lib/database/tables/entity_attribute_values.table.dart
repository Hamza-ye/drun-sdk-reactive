import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class EntityAttributeValues extends Table
    with BaseTableMixin, IdentifiableMixin {
  TextColumn get id => text()();

  @ReferenceName("instanceAttributeValues")
  TextColumn get entityInstance => text().references(EntityInstances, #id)();

  @ReferenceName("attributeValues")
  TextColumn get entityAttribute => text().references(EntityInstances, #id)();

  TextColumn get value => text().nullable()();

  TextColumn get syncState =>
      text().map(const EnumNameConverter(InstanceSyncStatus.values))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
