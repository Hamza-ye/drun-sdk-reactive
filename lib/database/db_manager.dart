import 'package:d_sdk/core/auth/authenticated_user.dart';
import 'package:d_sdk/core/platform/platform.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(scope: 'auth')
class DbManager {
  DbManager()
      : _db = AppDatabase(
            executor: _createExecutor(rSdkLocator<AuthState>().user!.username,
                rSdkLocator<AuthState>().activeServerUrl!));

  final AppDatabase _db;

  AppDatabase? getActiveDb() => _db;

  Future<void> deleteData() async {
    await _db.customStatement('PRAGMA foreign_keys = OFF');
    try {
      _db.transaction(() async {
        for (final table in _db.allTables) {
          await _db.delete(table).go();
        }
      });
    } finally {
      await _db.customStatement('PRAGMA foreign_keys = OFF');
    }
  }

  @disposeMethod
  Future<void> closeDatabase(String username, String server) async {
    // final key = _connectionKey(username, server);
    // final db = _databases.remove(key);
    await _db.close();
  }

  static QueryExecutor _createExecutor(String username, String server) {
    return Platform.createDatabaseConnection(_connectionKey(username, server));
  }

  static String _connectionKey(String userName, String server) =>
      '${server}_$userName';
}
