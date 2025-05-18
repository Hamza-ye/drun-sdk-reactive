import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'form_template_versions_dao.g.dart';

@DriftAccessor(tables: [FormTemplateVersions])
class FormTemplateVersionsDao extends DatabaseAccessor<AppDatabase>
    with _$FormTemplateVersionsDaoMixin {
  FormTemplateVersionsDao(AppDatabase db) : super(db);

  Future<List<FormTemplateVersion>> getAllItems() =>
      select(formTemplateVersions).get();

  Future<FormTemplateVersion?> getItemById(String id) {
    return (select(formTemplateVersions)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<FormTemplateVersion> entry) {
    return into(formTemplateVersions).insert(entry);
  }

  Future<bool> updateItem(FormTemplateVersion item) {
    return update(formTemplateVersions).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(formTemplateVersions)..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
