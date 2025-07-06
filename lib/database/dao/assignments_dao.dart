import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'assignments_dao.g.dart';

@DriftAccessor(tables: [Assignments])
class AssignmentsDao extends DatabaseAccessor<AppDatabase>
    with _$AssignmentsDaoMixin {
  AssignmentsDao(AppDatabase db) : super(db);

  Future<List<Assignment>> getAll() => select(assignments).get();

  Future<List<Assignment>> getByIds(Iterable<String> ids) {
    return (select(assignments)..where((tbl) => tbl.id.isIn(ids))).get();
  }

  Future<Assignment?> getById(String id) {
    return (select(assignments)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<Assignment> entry) {
    return into(assignments).insert(entry);
  }

  Future<bool> updateObject(Assignment item) {
    return update(assignments).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(assignments)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(Assignment assignment) {
    return deleteById(assignment.id);
  }

  Selectable<AssignmentModel> selectAssignments({
    String? activityId,
    String ouSearchFilter = '',
    int page = 1, // 1-based page index
    int pageSize = 20,
  }) {
    final offset = (page - 1) * pageSize;

    final ous = alias(orgUnits, 'ou');
    final act = alias(activities, 'act');
    // Base join query
    final JoinedSelectStatement<HasResultSet, dynamic> query =
        select(assignments)
            // ..where((a) => a.activity.equals(activityId)))
            .join([
      innerJoin(teams, teams.id.equalsExp(assignments.team)),
      innerJoin(act, act.id.equalsExp(assignments.activity)),
      innerJoin(ous, ous.id.equalsExp(assignments.orgUnit)),
    ]);

    // Apply activity filter if provided
    if (activityId != null) {
      query.where(act.id.equals(activityId));
    }

    // Apply orgUnit name filter if provided
    if (ouSearchFilter.isNotEmpty) {
      final pattern = '%${ouSearchFilter.toLowerCase()}%';
      query..where(ous.name.like(pattern) | ous.code.like(pattern));
    }

    // Apply paging
    query
      ..limit(pageSize, offset: offset)
      ..orderBy([
        // order for stable paging
        OrderingTerm(
            expression: db.assignments.instanceDate, mode: OrderingMode.desc),
        OrderingTerm(expression: db.assignments.id),
      ]);

    // Map rows to model
    return query.map((row) {
      final a = row.readTable(assignments);
      final t = row.readTable(teams);
      final ou = row.readTable(ous);
      final ac = row.readTable(act);

      return AssignmentModel(
        id: a.id,
        activity: activityId != null
            ? IdentifiableModel(id: activityId, code: ac.code, name: ac.name)
            : null,
        orgUnit: IdentifiableModel(
          id: ou.id,
          code: ou.code,
          name: ou.name,
        ),
        team: IdentifiableModel(
          id: t.id,
          code: t.code,
          name: t.code ?? '',
        ),
        // startDay: a.startDay,
        startDate: a.instanceDate,
        dueDate: null,
        status: a.assignmentStatus ?? AssignmentStatus.PLANNED,
      );
    });
  }
//
// // AssignmentCardProjection is a simple class to hold flat query results
// // map List<AssignmentCardProjection> to List<AssignmentCardViewModel>
//   Selectable<AssignmentModel> watchAssignmentCardsForActivity2(
//       String activityId,
//       {int page = 1,
//       int pageSize = 20}) {
//     // final offset = (page - 1) * pageSize;
//     final JoinedSelectStatement<HasResultSet, dynamic> query =
//         (select(db.assignments)..where((a) => a.activity.equals(activityId)))
//             .join([
//       innerJoin(db.teams, db.teams.id.equalsExp(db.assignments.team)),
//       innerJoin(
//           db.activities, db.activities.id.equalsExp(db.assignments.activity)),
//       innerJoin(db.orgUnits, db.orgUnits.id.equalsExp(db.assignments.orgUnit)),
//     ]);
//
//     final result = query.map((row) {
//       final activity = row.readTable(activities);
//       final team = row.readTable(teams);
//       final orgUnit = row.readTable(orgUnits);
//       return AssignmentModel(
//         id: row.readTable(assignments).id,
//         activity: IdentifiableModel(
//             id: activityId, code: activity.code, name: activity.name),
//         orgUnit: IdentifiableModel(
//             id: orgUnit.id, code: orgUnit.code, name: orgUnit.name),
//         team: IdentifiableModel(id: team.id, code: team.code, name: team.code),
//         startDay: row.readTable(assignments).startDay,
//         startDate: row.readTable(assignments).startDate,
//         dueDate: null,
//         // reportedResources: {},
//         status: row.readTable(assignments).progressStatus ??
//             AssignmentStatus.NOT_STARTED,
//       );
//     });
//     return result;
//   }
}
