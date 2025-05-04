import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// OrgUnit Table
@TableIndex.sql('''
  CREATE INDEX org_code_idx ON org_units (code);
''')
@TableIndex.sql('''
  CREATE INDEX org_name_idx ON org_units (name);
''')
@TableIndex(name: 'org_path_idx', columns: {#path}, unique: true)
@TableIndex(name: 'org_level_idx', columns: {#level})
class OrgUnits extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get path => text()();

  IntColumn get level => integer()();

  TextColumn get parent => text().references(OrgUnits, #id).nullable()();
}
