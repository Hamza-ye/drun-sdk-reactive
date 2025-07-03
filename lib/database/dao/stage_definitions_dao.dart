import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'stage_definitions_dao.g.dart';

@DriftAccessor(tables: [StageDefinitions])
class StageDefinitionsDao extends DatabaseAccessor<AppDatabase>
    with _$StageDefinitionsDaoMixin {
  StageDefinitionsDao(AppDatabase db) : super(db);

  Future<List<StageDefinition>> getAll() => select(stageDefinitions).get();

  Future<StageDefinition?> getById(String id) {
    return (select(stageDefinitions)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<StageDefinition> entry) {
    return into(stageDefinitions).insert(entry);
  }

  Future<bool> updateObject(StageDefinition item) {
    return update(stageDefinitions).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(stageDefinitions)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(StageDefinition assignment) {
    return deleteById(assignment.id);
  }
}
