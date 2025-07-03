import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'flow_types_dao.g.dart';

@DriftAccessor(tables: [FlowTypes])
class FlowTypesDao extends DatabaseAccessor<AppDatabase>
    with _$FlowTypesDaoMixin {
  FlowTypesDao(AppDatabase db) : super(db);

  Future<List<FlowType>> getAll() => select(flowTypes).get();

  Future<FlowType?> getById(String id) {
    return (select(flowTypes)
      ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<FlowType> entry) {
    return into(flowTypes).insert(entry);
  }

  Future<bool> updateObject(FlowType item) {
    return update(flowTypes).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(flowTypes)
      ..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(FlowType assignment) {
    return deleteById(assignment.id);
  }
}
