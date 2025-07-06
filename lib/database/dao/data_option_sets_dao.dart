import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/option_sets.table.dart';
import 'package:drift/drift.dart';

part 'data_option_sets_dao.g.dart';

@DriftAccessor(tables: [DataOptionSets])
class DataOptionSetsDao extends DatabaseAccessor<AppDatabase>
    with _$DataOptionSetsDaoMixin {
  DataOptionSetsDao(AppDatabase db) : super(db);

  Future<List<DataOptionSet>> getAllItems() => select(dataOptionSets).get();

  Future<DataOptionSet?> getItemById(String id) {
    return (select(dataOptionSets)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<List<DataOptionSet>> getByIds(List<String> ids) {
    return (select(dataOptionSets)..where((tbl) => tbl.id.isIn(ids)))
        .get();
  }

  Future<int> insertItem(Insertable<DataOptionSet> entry) {
    return into(dataOptionSets).insert(entry);
  }

  Future<bool> updateItem(DataOptionSet item) {
    return update(dataOptionSets).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(dataOptionSets)..where((tbl) => tbl.id.equals(id))).go();
  }
}
