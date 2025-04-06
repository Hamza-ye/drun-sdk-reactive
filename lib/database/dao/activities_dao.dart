import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/activities.table.dart';
import 'package:drift/drift.dart';

part 'activities_dao.g.dart';

@DriftAccessor(tables: [Activities])
class ActivitiesDao extends DatabaseAccessor<AppDatabase>
    with _$ActivitiesDaoMixin {
  ActivitiesDao(AppDatabase db) : super(db);

  Future<List<Activity>> getAllItems() => select(activities).get();

  Future<Activity?> getItemById(String id) {
    return (select(activities)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<Activity> entry) {
    return into(activities).insert(entry);
  }

  Future<bool> updateItem(Activity item) {
    return update(activities).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(activities)..where((tbl) => tbl.id.equals(id))).go();
  }
}
