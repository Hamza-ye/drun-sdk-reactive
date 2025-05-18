import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'form_templates_dao.g.dart';

@DriftAccessor(tables: [FormTemplates])
class FormTemplatesDao extends DatabaseAccessor<AppDatabase>
    with _$FormTemplatesDaoMixin {
  FormTemplatesDao(AppDatabase db) : super(db);

  Future<List<FormTemplate>> getAllItems() =>
      select(formTemplates).get();

  Future<FormTemplate?> getItemById(String id) {
    return (select(formTemplates)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<FormTemplate> entry) {
    return into(formTemplates).insert(entry);
  }

  Future<bool> updateItem(FormTemplate item) {
    return update(formTemplates).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(formTemplates)..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
