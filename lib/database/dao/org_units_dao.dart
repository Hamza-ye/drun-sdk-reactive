import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/org_units.table.dart';
import 'package:drift/drift.dart';

part 'org_units_dao.g.dart';

@DriftAccessor(tables: [OrgUnits])
class OrgUnitsDao extends DatabaseAccessor<AppDatabase>
    with _$OrgUnitsDaoMixin {
  OrgUnitsDao(AppDatabase db) : super(db);

  Future<List<OrgUnit>> getAllItems() => select(orgUnits).get();

  Future<OrgUnit?> getItemById(String id) {
    return (select(orgUnits)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<OrgUnit> entry) {
    return into(orgUnits).insert(entry);
  }

  Future<bool> updateItem(OrgUnit item) {
    return update(orgUnits).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(orgUnits)..where((tbl) => tbl.id.equals(id))).go();
  }
}
