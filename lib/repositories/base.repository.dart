// import 'package:d_sdk/core/auth/session_manager.dart';
// import 'package:d_sdk/database/app_database.dart';
//
// abstract class BaseRepository {
//   final AppDatabase db;
//   final SessionManager sessionManager;
//
//   BaseRepository(this.db, this.sessionManager);
//
//   // A helper method to enforce the user scope on queries.
//   QueryBuilder<T, D, S> _applyUserFilter<T extends UserScopedTable, D extends DataClass, S>(
//       QueryBuilder<T, D, S> query,
//       T table,
//       ) {
//     final currentUserId = sessionManager.currentUserId;
//     if (currentUserId == null) {
//       throw Exception('No user is logged in.');
//     }
//     // Apply the filter automatically.
//     return query..where((tbl) => table.userId.equals(currentUserId));
//   }
// }
