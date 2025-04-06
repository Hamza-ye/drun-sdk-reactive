import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/activities.table.dart';
import 'package:d_sdk/database/tables/assignments.table.dart';
import 'package:d_sdk/database/tables/repeat_instances.table.dart';
import 'package:d_sdk/database/tables/users.table.dart';
import 'package:drift/drift.dart';

part 'users_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  UsersDao(AppDatabase db) : super(db);

  Future<List<User>> getAllItems() => select(users).get();

  Future<User?> getItemById(String id) {
    return (select(users)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertItem(Insertable<User> entry) {
    return into(users).insert(entry);
  }

  Future<bool> updateItem(User item) {
    return update(users).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(users)..where((tbl) => tbl.id.equals(id))).go();
  }
}
