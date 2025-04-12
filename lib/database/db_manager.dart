import 'package:d_sdk/core/auth/user_detail.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_provider.dart';
import 'package:injectable/injectable.dart';

@Order(2)
@LazySingleton(scope: 'authenticated')
class DbManager {
  DbManager(this._dbProvider);

  final DbProvider _dbProvider;

  AppDatabase get db => _dbProvider.database;

  /// called only after authentication success and
  /// registering the AuthenticatedUser
  Future<User?> loadAuthUserData(UserDetail userDetail) async {
    // if (!rSdkLocator.isRegistered<UserDetail>()) {
    //   throw NoCachedAuthenticatedUser(
    //       message: 'No registered Authenticated User');
    // }

    // // get current registered authenticated user
    // final UserDetail userDetail =
    //     rSdkLocator<AuthenticatedUser>();

    // get current authenticated user data from database
    final user = await (db.select(db.users)
          ..where((t) => t.username.equals(userDetail.username)))
        .getSingleOrNull();

    return user;
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

//
// static String _connectionKey(String userName, String server) {
//   final uri = Uri.parse(server).host;
//   return '${uri}_$userName';
// }
}
