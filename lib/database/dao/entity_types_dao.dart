import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'entity_types_dao.g.dart';

@DriftAccessor(tables: [EntityTypes])
class EntityTypesDao extends DatabaseAccessor<AppDatabase>
    with _$EntityTypesDaoMixin {
  EntityTypesDao(AppDatabase db) : super(db);

  Future<List<EntityType>> getAll() => select(entityTypes).get();

  Future<EntityType?> getById(String id) {
    return (select(entityTypes)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<EntityType> entry) {
    return into(entityTypes).insert(entry);
  }

  Future<bool> updateObject(EntityType item) {
    return update(entityTypes).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(entityTypes)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(EntityType assignment) {
    return deleteById(assignment.id);
  }
}
