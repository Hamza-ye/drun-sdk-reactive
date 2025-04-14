import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Order(1)
@LazySingleton()
class DbManager {
  DbManager(this._userSessionRepo);

  late final AppDatabase _database;
  late final String _databaseName;

  UserSessionRepository _userSessionRepo;

  AppDatabase get db => _database;

  @postConstruct
  DbManager init() {
    final currentDatabaseName = _userSessionRepo.getCurrentDbName();
    throwIf(currentDatabaseName == null,
        DatabaseInitException(message: 'database field name not found'));
    _databaseName = currentDatabaseName!;
    _database = AppDatabase(databaseName: _databaseName);
    return this;
  }

  /// Returns a stream of AuthUserData from the local database.
  Stream<User?> watchAuthUserData(String userId) {
    return (db.select(db.users)..where((t) => t.id.equals(userId)))
        .watchSingleOrNull();
  }

  /// called only after authentication success and
  /// registering the AuthenticatedUser
  Future<User> loadAuthUserData() async {
    final username = _databaseName.split('_')[1];
    final user = await (db.select(db.users)
          ..where((t) => t.username.equals(username)))
        .getSingleOrNull();
    throwIf(user == null,
        DatabaseInitException(message: 'Database auth user not found in db'));
    return user!;
  }

  Future<void> saveAuthUserData(User authUserData) async {
    await (db.into(db.users).insertOnConflictUpdate(authUserData));
  }

  Future<void> deleteData() async {
    await db.customStatement('PRAGMA foreign_keys = OFF');
    try {
      db.transaction(() async {
        for (final table in db.allTables) {
          await db.delete(table).go();
        }
      });
    } finally {
      await db.customStatement('PRAGMA foreign_keys = OFF');
    }
  }

  @disposeMethod
  Future<void> closeDatabase() async {
    await _database.close();
  }
//
// static String _connectionKey(String userName, String server) {
//   final uri = Uri.parse(server).host;
//   return '${uri}_$userName';
// }
}
