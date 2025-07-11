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

  Future<List<AssignmentModel>> allAssignments(
      {String? activityId, String ouSearchFilter = ''}) async {
    var assignmentWithRefs = db.managers.assignments;
    // .filter((f) => f.disabled.not(true));

    if (activityId != null) {
      assignmentWithRefs = assignmentWithRefs
        ..filter((f) => f.activity.id(activityId));
    }

    if (ouSearchFilter.isNotEmpty) {
      assignmentWithRefs = assignmentWithRefs..filter((f) => f.orgUnit.name.contains(ouSearchFilter));
    }

    final result = assignmentWithRefs
        .withReferences((prefetch) =>
            prefetch(forms: true, team: true, activity: true, orgUnit: true))
        .orderBy((o) => o.instanceDate.asc(nulls: NullsOrder.last))
        .map((assignmentsWithRefs) {
      final a = assignmentsWithRefs.$1;
      final forms = assignmentsWithRefs.$2.forms.prefetchedData?.length ?? 0;
      final activity =
          assignmentsWithRefs.$2.activity.prefetchedData!.firstOrNull;
      final ou = assignmentsWithRefs.$2.orgUnit.prefetchedData!.firstOrNull;
      final team = assignmentsWithRefs.$2.team.prefetchedData!.firstOrNull;
      return AssignmentModel(
          id: a.id,
          activity: activity != null
              ? IdentifiableModel(
                  id: activity.id, code: activity.code, name: activity.name)
              : null,
          orgUnit: IdentifiableModel(
            id: ou!.id,
            code: ou.code,
            name: ou.name,
          ),
          team: IdentifiableModel(
            id: team!.id,
            code: team.code,
            name: team.code ?? '',
          ),
          // startDay: a.startDay,
          startDate: a.instanceDate,
          dueDate: null,
          formCount: forms
          // status: a.assignmentStatus ?? AssignmentStatus.PLANNED,
          );
    }).get();

    return result;
  }

  Selectable<AssignmentModel> selectAssignments({
    String? activityId,
    String ouSearchFilter = '',
    int page = 1, // 1-based page index
    int pageSize = 20,
  }) {
    final offset = (page - 1) * pageSize;

    final a = alias(assignments, 'a');
    final ous = alias(orgUnits, 'ou');
    final act = alias(activities, 'act');
    // final f = alias(db.assignmentForms, 'f');
    final formsCount = db.assignmentForms.assignment.equalsExp(a.id).count();
    // Base join query
    final JoinedSelectStatement<HasResultSet, dynamic> query =
        select(a).addColumns([formsCount]).join([
      innerJoin(teams, teams.id.equalsExp(a.team)),
      innerJoin(act, act.id.equalsExp(a.activity)),
      innerJoin(ous, ous.id.equalsExp(a.orgUnit)),
      // innerJoin(forms, forms.assignment.equalsExp(a.id)),
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
      final forms = row.read(formsCount)!;
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
          formCount: forms
          // status: a.assignmentStatus ?? AssignmentStatus.PLANNED,
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
