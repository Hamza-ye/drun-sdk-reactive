// import 'package:d_sdk/core/config/server_config.dart';
// import 'package:d_sdk/core/platform/platform.dart';
// import 'package:d_sdk/database/app_database.dart';
//
// abstract class DatabaseManager {
//   final Map<String, AppDatabase> _activeConnections = {};
//   String? _activeDatabaseName;
//
//   Future<AppDatabase> connectForUser({
//     required String userName,
//     required ServerConfig server,
//   }) async {
//     final key = _connectionKey(userName, server);
//
//     if (_activeDatabaseName != null) {
//       await _activeConnections[_activeDatabaseName]?.close();
//       _activeConnections.remove(_activeDatabaseName!);
//     }
//     if (!_activeConnections.containsKey(key)) {
//       final db = await createDatabase(userName, server);
//       _activeConnections[key] = db;
//     }
//
//     return _activeConnections[key]!;
//   }
//
//   Future<AppDatabase> createDatabase(
//       String userName, ServerConfig server) async {
//     return AppDatabase(
//         executor: Platform.createDatabaseConnection(_connectionKey(userName, server)));
//   }
//
//   String _connectionKey(String userName, ServerConfig server) =>
//       '${server.baseUrl}_$userName';
//
//   String getDatabasePath(String username, ServerConfig server) {
//     // TODO
//     throw UnimplementedError();
//   }
//
//
//   Future<void> deleteData() async {
//     db.select('pragma cipher_version')
//     await customStatement('PRAGMA foreign_keys = OFF');
//     try {
//       transaction(() async {
//         for (final table in allTables) {
//           await delete(table).go();
//         }
//       });
//     } finally {
//       await customStatement('PRAGMA foreign_keys = OFF');
//     }
//   }
//
//   Future<void> backupData() {
//     // TODO
//     throw UnimplementedError();
//   }
// }
