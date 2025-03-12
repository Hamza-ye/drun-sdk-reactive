import 'package:d_sdk/core/form/field_template/field_template.dart';
import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Users,
  UserAuthorities,
  OrgUnits,
  OuLevels,
  Projects,
  Activities,
  Teams,
  Assignments,
  FormTemplates,
  FormVersions,
  MetadataSubmissions,
  DataFormSubmissions,
  RepeatInstances,
  DataValues,
  DataElements,
  DataOptionSets,
  DataOptions
])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}
