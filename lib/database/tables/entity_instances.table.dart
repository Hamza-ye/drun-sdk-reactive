import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class EntityInstances extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get id => text()();

  TextColumn get uuid => text().nullable()();

  @ReferenceName("entityInstances")
  TextColumn get entityType => text().references(EntityTypes, #id)();

  TextColumn get status => text()
      .map(const EnumNameConverter(EntityStatus.values))
      .clientDefault(() => EntityStatus.ACTIVE.name)
      .nullable()();

  DateTimeColumn get updatedAtClient => dateTime().nullable()();

  DateTimeColumn get createdAtClient => dateTime().nullable()();

  /// Identity attributes (JSON object of key → value)
  TextColumn get identityAttributes =>
      text().map(const NullAwareMapConverter()).nullable()();

  TextColumn get syncState =>
      text().map(const EnumNameConverter(InstanceSyncStatus.values))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

enum EntityStatus { ACTIVE, INACTIVE, ARCHIVED }
