import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/core/platform/platform.dart';
import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/dao/dao.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Users,
  OrgUnits,
  OuLevels,
  Projects,
  Activities,
  Teams,
  ManagedTeams,
  FlowInstances,
  AssignmentForms,
  MetadataSubmissions,
  RepeatInstances,
  DataValues,
  DataElements,
  DataOptionSets,
  DataOptions,
  DataSubmissions,
  FormTemplateVersions,
  FormTemplates,
  UserFormPermissions,
  FlowTypes,
  FlowInstances,
  EntityTypes,
  EntityAttributes,
  EntityInstances,
  EntityAttributeValues,
  StageDefinitions,
  DataSubmissions,
], daos: [
  ActivitiesDao,
  FlowInstancesDao,
  DataSubmissionsDao,
  DataValuesDao,
  RepeatInstancesDao,
  TeamsDao,
  DataOptionSetsDao,
  OrgUnitsDao,
  UsersDao,
  FormTemplateVersionsDao,
  FormTemplatesDao,
  DataElementsDao,
  FlowTypesDao,
  EntityTypesDao,
  EntityAttributesDao,
  EntityInstancesDao,
  StageDefinitionsDao,
])
class AppDatabase extends _$AppDatabase {
  // AppDatabase(super.e, {String? databaseName});
  AppDatabase({QueryExecutor? executor, String? databaseName})
      : super(executor ?? Platform.createDatabaseConnection(databaseName!)

            /* /// no encryption, called if QueryExecutor is null
              driftDatabase(
                name: databaseName ?? 'drun-db',
                native: const DriftNativeOptions(
                  databaseDirectory: getApplicationSupportDirectory,
                ),
                web: DriftWebOptions(
                  sqlite3Wasm: Uri.parse('sqlite3.wasm'),
                  driftWorker: Uri.parse('drift_worker.js'),
                  onResult: (result) {
                    if (result.missingFeatures.isNotEmpty) {
                      logDebug(
                        'Using ${result.chosenImplementation} due to unsupported '
                        'browser features: ${result.missingFeatures}',
                      );
                    }
                  },
                ),
              ),*/
            );

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (OpeningDetails details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }

  @override
  int get schemaVersion => 1;
}
