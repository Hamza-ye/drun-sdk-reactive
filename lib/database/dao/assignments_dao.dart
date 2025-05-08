import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/assignments.table.dart';
import 'package:drift/drift.dart';

part 'assignments_dao.g.dart';

@DriftAccessor(tables: [Assignments])
class AssignmentsDao extends DatabaseAccessor<AppDatabase>
    with _$AssignmentsDaoMixin {
  AssignmentsDao(AppDatabase db) : super(db);

  Future<List<Assignment>> getAllItems() => select(assignments).get();

  Future<Assignment?> getItemById(String id) {
    return (select(assignments)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertItem(Insertable<Assignment> entry) {
    return into(assignments).insert(entry);
  }

  Future<bool> updateItem(Assignment item) {
    return update(assignments).replace(item);
  }

  Future<int> deleteItem(String id) {
    return (delete(assignments)..where((tbl) => tbl.id.equals(id))).go();
  }

  // AssignmentCardProjection is a simple class to hold flat query results
  // map List<AssignmentCardProjection> to List<AssignmentCardViewModel>
  Selectable<AssignmentModel> watchAssignmentCardsForActivity(String activityId,
      {int page = 1, int pageSize = 20}) {
    // final offset = (page - 1) * pageSize;
    final query = (select(db.assignments)
          ..where((a) => a.activity.equals(activityId)))
        .join([
      innerJoin(db.teams, db.teams.id.equalsExp(db.assignments.team)),
      innerJoin(
          db.activities, db.activities.id.equalsExp(db.assignments.activity)),
    ]);
    /*   ..orderBy([
        OrderingTerm(
            expression: db.assignments.startDay, mode: OrderingMode.asc)
      ])
      ..limit(pageSize, offset: offset)*/

    return query.map((row) {
      final activity = row.readTable(activities);
      final team = row.readTable(teams);
      final orgUnit = row.readTable(orgUnits);
      return AssignmentModel(
        id: row.readTable(assignments).id,
        activity: IdentifiableModel(
            id: activityId, code: activity.code, name: activity.name),
        orgUnit: IdentifiableModel(
            id: orgUnit.id, code: orgUnit.code, name: orgUnit.name),
        team: IdentifiableModel(id: team.id, code: team.code, name: team.code),
        startDay: row.readTable(assignments).startDay,
        startDate: row.readTable(assignments).startDate,
        dueDate: null,
        forms: row.readTable(assignments).forms ?? [],
        allocatedResources: row.readTable(assignments).allocatedResources ?? {},
        reportedResources: {},
        scope: row.readTable(assignments).scope,
        status: row.readTable(assignments).progressStatus ??
            AssignmentStatus.NOT_STARTED,
      );
    });
  }
}
