import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'data_elements_dao.g.dart';

@DriftAccessor(tables: [DataElements])
class DataElementsDao extends DatabaseAccessor<AppDatabase>
    with _$DataElementsDaoMixin {
  DataElementsDao(AppDatabase db) : super(db);

  Future<List<DataElement>> getAllItems() => select(dataElements).get();

  Future<DataElement?> getItemById(String id) {
    return (select(dataElements)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<DataElement> entry) {
    return into(dataElements).insert(entry);
  }

  Future<bool> updateItem(DataElement item) {
    return update(dataElements).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(dataElements)..where((tbl) => tbl.id.equals(id))).go();
  }
}
