import 'package:d_sdk/core/form/field_template/field_template.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Users,
  OrgUnits,
  OuLevels,
  Projects,
  Activities,
  Teams,
  Assignments,
  FormTemplates,
  FormVersions,
  MetadataSubmissions,
  RepeatInstances,
  DataValues,
  DataElements,
  DataOptionSets,
  DataOptions,
  DataFormSubmissions,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase({QueryExecutor? executor, String? databaseName})
      : super(
          executor ??

              /// no encryption, called if QueryExecutor is null
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
              ),
        );

  @override
  int get schemaVersion => 1;
}
