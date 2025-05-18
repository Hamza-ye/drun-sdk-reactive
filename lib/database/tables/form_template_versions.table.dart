import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'template_version_number_idx', columns: {#versionNumber})
class FormTemplateVersions extends Table {
  TextColumn get id => text()();

  @ReferenceName("formTemplateVersions")
  TextColumn get template => text().references(FormTemplates, #id)();

  IntColumn get versionNumber => integer()();

  TextColumn get fields => text().map(const TemplateListConverter())();

  TextColumn get sections => text().map(const TemplateListConverter())();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
