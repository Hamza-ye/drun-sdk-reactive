import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/activities.table.dart';
import 'package:d_sdk/database/tables/assignments.table.dart';
import 'package:drift/drift.dart';

part 'assignments_dao.g.dart';

@DriftAccessor(tables: [Assignments])
class AssignmentsDao extends DatabaseAccessor<AppDatabase>
    with _$AssignmentsDaoMixin {
  AssignmentsDao(AppDatabase db) : super(db);

  Future<List<Assignment>> getAllItems() => select(assignments).get();

  Future<Assignment?> getItemById(String id) {
    return (select(assignments)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<Assignment> entry) {
    return into(assignments).insert(entry);
  }

  Future<bool> updateItem(Assignment item) {
    return update(assignments).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(assignments)..where((tbl) => tbl.id.equals(id))).go();
  }
}
