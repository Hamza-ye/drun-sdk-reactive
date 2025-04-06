import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/data_submissions.table.dart';
import 'package:drift/drift.dart';

part 'data_form_submissions_dao.g.dart';

@DriftAccessor(tables: [DataFormSubmissions])
class DataFormSubmissionsDao extends DatabaseAccessor<AppDatabase>
    with _$DataFormSubmissionsDaoMixin {
  DataFormSubmissionsDao(AppDatabase db) : super(db);

  Future<List<DataFormSubmission>> getAllItems() =>
      select(dataFormSubmissions).get();

  Future<DataFormSubmission?> getItemById(String id) {
    return (select(dataFormSubmissions)
      ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<DataFormSubmission> entry) {
    return into(dataFormSubmissions).insert(entry);
  }

  Future<bool> updateItem(DataFormSubmission item) {
    return update(dataFormSubmissions).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(dataFormSubmissions)
      ..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
