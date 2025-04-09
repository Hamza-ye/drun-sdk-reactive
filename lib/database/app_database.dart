import 'package:d_sdk/core/form/field_template/field_template.dart';
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
  Assignments,
  FormVersions,
  MetadataSubmissions,
  RepeatInstances,
  DataValues,
  DataElements,
  DataOptionSets,
  DataOptions,
  DataSubmissions,
  DataFormTemplateVersions
], daos: [
  ActivitiesDao,
  AssignmentsDao,
  DataSubmissionsDao,
  DataValuesDao,
  FormVersionsDao,
  RepeatInstancesDao,
  TeamsDao,
  DataOptionSetsDao,
  OrgUnitsDao,
  UsersDao,
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
  int get schemaVersion => 1;
}
