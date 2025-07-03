import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'entity_type_key_idx', columns: {#name})
class EntityTypes extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get code => text().nullable()();

  TextColumn get name => text().nullable()();

  TextColumn get entityAttributes =>
      text().map(const TemplateListConverter())();
}
