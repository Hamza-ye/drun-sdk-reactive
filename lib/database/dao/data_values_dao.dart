import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/data_values.table.dart';
import 'package:drift/drift.dart';

part 'data_values_dao.g.dart';

@DriftAccessor(tables: [DataValues])
class DataValuesDao extends DatabaseAccessor<AppDatabase>
    with _$DataValuesDaoMixin {
  DataValuesDao(AppDatabase db) : super(db);

  Future<List<DataValue>> getAllItems() => select(dataValues).get();

  Future<DataValue?> getItemById(String id) {
    return (select(dataValues)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<DataValue> entry) {
    return into(dataValues).insert(entry);
  }

  Future<bool> updateItem(DataValue item) {
    return update(dataValues).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(dataValues)..where((tbl) => tbl.id.equals(id))).go();
  }
}
