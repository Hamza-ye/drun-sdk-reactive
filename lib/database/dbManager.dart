import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Singleton(scope: SessionContext.activeSessionScope)
class DbManager {
  DbManager(this.context) : db = AppDatabase(databaseName: context.dbName);
  late final AppDatabase db;
  late final SessionContext context;

  @preResolve
  Future<DbManager> initDb(SessionContext? authContext) async {
    // valid non null auth context
    throwIf(authContext != null, NoCachedAuthenticatedUser());
    logDebug('initializing DbManager for: ${authContext!.username}');
    context = authContext;

    // opening db
    return DbManager(authContext);
  }

  /// Returns a stream of AuthUserData from the local database.
  Stream<User?> watchAuthUserData(String userId) {
    return (db.select(db.users)..where((t) => t.id.equals(userId)))
        .watchSingleOrNull();
  }

  /// called only after authentication success and
  /// registering the AuthenticatedUser
  Future<User?> loadAuthUserData() {
    return (db.select(db.users)
          ..where((t) => t.username.equals(context.username)))
        .getSingleOrNull();
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
    await db.close();
  }
}
