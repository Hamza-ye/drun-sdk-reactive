import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'entity_attribute_name_idx', columns: {#name})
class EntityAttributes extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get code => text().nullable()();

  TextColumn get name => text()();

  TextColumn get shortName => text().nullable()();

  TextColumn get description => text().nullable()();

  TextColumn get valueType =>
      text().map(const EnumNameConverter(ValueType.values))();

  TextColumn get optionSet =>
      text().references(DataOptionSets, #id).nullable()();

  BoolColumn get displayWhenPlanned => boolean().nullable()();

  BoolColumn get mandatory => boolean().clientDefault(() => false).nullable()();

  TextColumn get defaultValue => text().nullable()();
}
