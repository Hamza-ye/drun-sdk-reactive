import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/form_templates.table.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'template_version_number_idx', columns: {#versionNumber})
class FormTemplateVersions extends Table {
  TextColumn get id => text()();

  @ReferenceName("versions")
  TextColumn get template => text().references(FormTemplates, #id)();

  IntColumn get versionNumber => integer()();

  /// copied from parent template
  TextColumn get name => text()();

  /// copied from parent template
  TextColumn get label => text()
      .map(const NullAwareMapConverter())
      .nullable()
      .clientDefault(() => '{}')();

  /// copied from parent template
  TextColumn get description => text().nullable()();

  TextColumn get fields => text().map(const TemplateListConverter())();

  TextColumn get sections => text().map(const TemplateListConverter())();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
