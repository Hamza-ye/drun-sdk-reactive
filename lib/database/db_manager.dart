import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/core/platform/platform.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:drift/drift.dart';

class DbManager {
  static final _instance = DbManager._internal();
  final Map<String, AppDatabase> _databases = {};
  AppDatabase? _activeDb;

  DbManager._internal();

  factory DbManager() => _instance;

  Future<AppDatabase> switchDatabase({
    required String username,
    required ServerConfig server,
  }) async {
    final key = _connectionKey(username, server);

    if (!_databases.containsKey(key)) {
      final executor = await _createExecutor(username, server);
      _databases[key] = AppDatabase(executor: executor);
    }

    _activeDb = _databases[key]!;
    return _databases[key]!;
  }

  AppDatabase? getActiveDb() => _activeDb;

  Future<void> deleteData() async {
    await _activeDb?.customStatement('PRAGMA foreign_keys = OFF');
    try {
      _activeDb?.transaction(() async {
        for (final table
            in _activeDb?.allTables ?? <TableInfo<Table, Object?>>[]) {
          await _activeDb?.delete(table).go();
        }
      });
    } finally {
      await _activeDb?.customStatement('PRAGMA foreign_keys = OFF');
      ;
    }
  }

  Future<void> closeDatabase(String username, ServerConfig server) async {
    final key = _connectionKey(username, server);
    final db = _databases.remove(key);
    await db?.close();
  }

  Future<QueryExecutor> _createExecutor(
      String username, ServerConfig server) async {
    return Platform.createDatabaseConnection(_connectionKey(username, server));
  }

  String _connectionKey(String userName, ServerConfig server) =>
      '${server.baseUrl}_$userName';
}
