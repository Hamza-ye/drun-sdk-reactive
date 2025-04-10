import 'package:d_sdk/core/auth/authenticated_user.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:injectable/injectable.dart';

@Order(1)
@LazySingleton(scope: 'auth')
class DbManager {
  DbManager()
      : _db = AppDatabase(
            databaseName: _connectionKey(
                rSdkLocator<AuthState>().user!.username,
                rSdkLocator<AuthState>().activeServerUrl!));

  final AppDatabase _db;

  AppDatabase getActiveDb() => _db;

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
  Future<void> closeDatabase() async {
    // final key = _connectionKey(username, server);
    // final db = _databases.remove(key);
    await _db.close();
  }

  static String _connectionKey(String userName, String server) {
    final uri = Uri.parse(server).host;
    return '${uri}_$userName';
  }
}
