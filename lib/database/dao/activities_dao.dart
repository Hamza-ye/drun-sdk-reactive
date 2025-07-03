import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/activity_model.dart';
import 'package:d_sdk/database/tables/activities.table.dart';
import 'package:drift/drift.dart';

part 'activities_dao.g.dart';

@DriftAccessor(tables: [Activities])
class ActivitiesDao extends DatabaseAccessor<AppDatabase>
    with _$ActivitiesDaoMixin {
  ActivitiesDao(AppDatabase db) : super(db);

  /// watch the status of submission belonging to an
  /// item (i.e, the aggregation level) (e.g. Assignment, Form,..)
  /// by passing the item id and the item level
  // Selectable<ActivityModel> watchStatusByLevel(String id) {
  //   final byId = activities.id.equals(id);
  //
  //   final managedTeams = db.teams.activity.equals(id);
  //   final managedTeamCount = db.teams.activity.equals(id).count();
  //
  //   final assignmentCount = db.assignments.activity.equals(id).count();
  //
  //   final query = selectOnly(activities)
  //     ..addColumns([managedTeams, assignmentCount])
  //     ..where(byId);
  //
  //   return query.map((row) {
  //     final ac = row.readTable(activities);
  //     final managedCount = row.read(managedTeamCount)!;
  //     final assignedAssignments = row.read(assignmentCount)!;
  //     return ActivityModel(
  //         id: id,
  //         managedTeams: managedCount,
  //         assignedAssignments: assignedAssignments,
  //         name: ac.name);
  //   });
  // }
  //
  //

  Selectable<ActivityModel> selectActivities({
    List<String> ids = const [],
    String ouSearchFilter = '',
    int page = 1,
    int pageSize = 20,
  }) {
    final offset = (page - 1) * pageSize;

    final act = alias(activities, 'act');
    final a = alias(db.flowInstances, 'a');
    final mt = alias(db.managedTeams, 't');
    final t = alias(db.teams, 't');

    final assignedAssignmentsCount = a.activity.equalsExp(act.id).count();
    final managedTeamsCount = mt.activity.equalsExp(act.id).count();

    final JoinedSelectStatement<HasResultSet, dynamic> query = select(act)
        .addColumns([assignedAssignmentsCount, managedTeamsCount]).join([
      innerJoin(a, a.activity.equalsExp(act.id), useColumns: false),
      innerJoin(mt, mt.activity.equalsExp(act.id), useColumns: false),
      innerJoin(t, t.activity.equalsExp(t.activity), useColumns: false),
    ]);

    if (ids.isNotEmpty) {
      query.where(act.id.isIn(ids));
    }

    if (ouSearchFilter.isNotEmpty) {
      final pattern = '%${ouSearchFilter.toLowerCase()}%';
      query..where(act.name.like(pattern) | act.code.like(pattern));
    }

    query
      ..limit(pageSize, offset: offset)
      ..orderBy([
        OrderingTerm(expression: act.startDate, mode: OrderingMode.desc),
        OrderingTerm(expression: act.id),
      ]);

    // Map rows to model
    return query.map((row) {
      final ac = row.readTable(act);
      final assignedAssignments = row.read(assignedAssignmentsCount)!;
      final managedTeams = row.read(managedTeamsCount)!;

      return ActivityModel(
          id: ac.id,
          managedTeams: managedTeams,
          assignedAssignments: assignedAssignments,
          name: ac.name);
    });
  }
}
