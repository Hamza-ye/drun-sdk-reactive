// import 'package:d_sdk/core/exception/exception.dart';
// import 'package:d_sdk/database/app_database.dart';
// import 'package:datarunmobile/core/user_session/session_scope.dart';
// import 'package:get_it/get_it.dart';
//
// extension ActiveSessionManagerExtension on SessionScope {
//   /// Returns a stream of AuthUserData from the local database.
//   Stream<User?> watchAuthUserData(String userId) {
//     return (db.select(db.users)..where((t) => t.id.equals(userId)))
//         .watchSingleOrNull();
//   }
//
//   /// called only after authentication success and
//   /// registering the AuthenticatedUser
//   Future<User> loadAuthUserData() async {
//     final username = currentSession.username;
//     final user = await (db.select(db.users)
//           ..where((t) => t.username.equals(username)))
//         .getSingleOrNull();
//     throwIf(user == null,
//         DatabaseInitException(message: 'Database auth user not found in db'));
//     return user!;
//   }
//
//   Future<void> saveAuthUserData(User authUserData) async {
//     await (db.into(db.users).insertOnConflictUpdate(authUserData));
//   }
//
//   Future<void> deleteData() async {
//     await db.customStatement('PRAGMA foreign_keys = OFF');
//     try {
//       db.transaction(() async {
//         for (final table in db.allTables) {
//           await db.delete(table).go();
//         }
//       });
//     } finally {
//       await db.customStatement('PRAGMA foreign_keys = OFF');
//     }
//   }
//
//   // @disposeMethod
//   Future<void> closeDatabase() async {
//     await db.close();
//   }
// }
