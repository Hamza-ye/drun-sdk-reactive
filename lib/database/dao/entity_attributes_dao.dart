import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'entity_attributes_dao.g.dart';

@DriftAccessor(tables: [EntityAttributes])
class EntityAttributesDao extends DatabaseAccessor<AppDatabase>
    with _$EntityAttributesDaoMixin {
  EntityAttributesDao(AppDatabase db) : super(db);

  Future<List<EntityAttribute>> getAll() => select(entityAttributes).get();

  Future<EntityAttribute?> getById(String id) {
    return (select(entityAttributes)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<EntityAttribute> entry) {
    return into(entityAttributes).insert(entry);
  }

  Future<bool> updateObject(EntityAttribute item) {
    return update(entityAttributes).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(entityAttributes)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(EntityAttribute assignment) {
    return deleteById(assignment.id);
  }
}
