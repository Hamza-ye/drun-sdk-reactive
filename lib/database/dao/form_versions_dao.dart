import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/form_versions.table.dart';
import 'package:drift/drift.dart';

part 'form_versions_dao.g.dart';

@DriftAccessor(tables: [FormVersions])
class FormVersionsDao extends DatabaseAccessor<AppDatabase>
    with _$FormVersionsDaoMixin {
  FormVersionsDao(AppDatabase db) : super(db);

  Future<List<FormVersion>> getAllItems() => select(formVersions).get();

  Future<FormVersion?> getItemById(String id) {
    return (select(formVersions)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<FormVersion> entry) {
    return into(formVersions).insert(entry);
  }

  Future<bool> updateItem(FormVersion item) {
    return update(formVersions).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(formVersions)..where((tbl) => tbl.id.equals(id))).go();
  }
}
