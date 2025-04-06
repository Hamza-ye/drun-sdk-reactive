import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/repeat_instances.table.dart';
import 'package:drift/drift.dart';

part 'repeat_instances_dao.g.dart';

@DriftAccessor(tables: [RepeatInstances])
class RepeatInstancesDao extends DatabaseAccessor<AppDatabase>
    with _$RepeatInstancesDaoMixin {
  RepeatInstancesDao(AppDatabase db) : super(db);

  Future<List<RepeatInstance>> getAllItems() => select(repeatInstances).get();

  Future<RepeatInstance?> getItemById(String id) {
    return (select(repeatInstances)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<RepeatInstance> entry) {
    return into(repeatInstances).insert(entry);
  }

  Future<bool> updateItem(RepeatInstance item) {
    return update(repeatInstances).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(repeatInstances)..where((tbl) => tbl.id.equals(id))).go();
  }
}
