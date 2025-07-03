import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'entity_instances_dao.g.dart';

@DriftAccessor(tables: [EntityInstances])
class EntityInstancesDao extends DatabaseAccessor<AppDatabase>
    with _$EntityInstancesDaoMixin {
  EntityInstancesDao(AppDatabase db) : super(db);

  Future<List<EntityInstance>> getAll() => select(entityInstances).get();

  Future<EntityInstance?> getById(String id) {
    return (select(entityInstances)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<EntityInstance> entry) {
    return into(entityInstances).insert(entry);
  }

  Future<bool> updateObject(EntityInstance item) {
    return update(entityInstances).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(entityInstances)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(EntityInstance assignment) {
    return deleteById(assignment.id);
  }
}
