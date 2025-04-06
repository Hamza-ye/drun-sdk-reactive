import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/teams.table.dart';
import 'package:drift/drift.dart';

part 'teams_dao.g.dart';

@DriftAccessor(tables: [Teams])
class TeamsDao extends DatabaseAccessor<AppDatabase> with _$TeamsDaoMixin {
  TeamsDao(AppDatabase db) : super(db);

  Future<List<Team>> getAllItems() => select(teams).get();

  Future<Team?> getItemById(String id) {
    return (select(teams)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertItem(Insertable<Team> entry) {
    return into(teams).insert(entry);
  }

  Future<bool> updateItem(Team item) {
    return update(teams).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(teams)..where((tbl) => tbl.id.equals(id))).go();
  }
}
