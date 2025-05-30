import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/shared/submission_sync_status_model.dart';
import 'package:d_sdk/database/tables/data_submissions.table.dart';
import 'package:drift/drift.dart';

part 'data_submissions_dao.g.dart';

@DriftAccessor(tables: [DataSubmissions])
class DataSubmissionsDao extends DatabaseAccessor<AppDatabase>
    with _$DataSubmissionsDaoMixin {
  DataSubmissionsDao(AppDatabase db) : super(db);

  Future<List<DataSubmission>> getAllItems({bool includeDeleted = false}) {
    final query = select(dataSubmissions);
    if (!includeDeleted) {
      query..where((row) => row.deleted.equals(false));
    }
    return query.get();
  }

  Future<DataSubmission?> getItemById(String id) {
    return (select(dataSubmissions)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<DataSubmission> entry) {
    return into(dataSubmissions).insert(entry);
  }

  Future<bool> updateItem(DataSubmission item) {
    return update(dataSubmissions).replace(item);
  }

  /// soft delete submission
  Future<int> deleteItem(String id) {
    // return (delete(dataSubmissions)..where((tbl) => tbl.id.equals(id))).go();
    return (db.update(db.dataSubmissions)..where((tbl) => tbl.id.equals(id)))
        .write(DataSubmissionsCompanion(deleted: Value(true)));
  }

  /// watch the status of submission belonging to an
  /// item (i.e, the aggregation level) (e.g. Assignment, Form,..)
  /// by passing the item id and the item level
  Selectable<SubmissionSyncStatusModel> watchStatusByLevel(
      String id, StatusAggregationLevel aggregationLevel) {
    late final Expression<bool> byLevel = switch (aggregationLevel) {
      StatusAggregationLevel.assignment =>
        dataSubmissions.assignment.equals(id),
      StatusAggregationLevel.form => dataSubmissions.form.equals(id),
    };

    final status = dataSubmissions.status;
    final count = dataSubmissions.id.count();

    final query = selectOnly(dataSubmissions)
      ..addColumns([status, count])
      ..where(byLevel)
      ..groupBy([dataSubmissions.status]);

    return query.map((row) {
      final status = row.read(dataSubmissions.status)!;
      return SubmissionSyncStatusModel(
          status: SubmissionStatus.getValue(status), count: row.read(count)!);
    });
  }
}
