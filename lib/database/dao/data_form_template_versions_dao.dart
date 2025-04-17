import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'data_form_template_versions_dao.g.dart';

@DriftAccessor(tables: [DataFormTemplateVersions])
class DataFormTemplateVersionsDao extends DatabaseAccessor<AppDatabase>
    with _$DataFormTemplateVersionsDaoMixin {
  DataFormTemplateVersionsDao(AppDatabase db) : super(db);

  Future<List<DataFormTemplateVersion>> getAllItems() =>
      select(dataFormTemplateVersions).get();

  Future<DataFormTemplateVersion?> getItemById(String id) {
    return (select(dataFormTemplateVersions)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<DataFormTemplateVersion> entry) {
    return into(dataFormTemplateVersions).insert(entry);
  }

  Future<bool> updateItem(DataFormTemplateVersion item) {
    return update(dataFormTemplateVersions).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(dataFormTemplateVersions)..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
