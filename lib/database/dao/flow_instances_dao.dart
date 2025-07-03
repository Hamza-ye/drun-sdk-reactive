import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/flow_instances.table.dart';
import 'package:drift/drift.dart';

part 'flow_instances_dao.g.dart';

@DriftAccessor(tables: [FlowInstances])
class FlowInstancesDao extends DatabaseAccessor<AppDatabase>
    with _$FlowInstancesDaoMixin {
  FlowInstancesDao(AppDatabase db) : super(db);

  Future<List<FlowInstance>> getAll() => select(flowInstances).get();

  Future<List<FlowInstance>> getByIds(Iterable<String> ids) {
    return (select(flowInstances)..where((tbl) => tbl.id.isIn(ids))).get();
  }

  Future<FlowInstance?> getById(String id) {
    return (select(flowInstances)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insert(Insertable<FlowInstance> entry) {
    return into(flowInstances).insert(entry);
  }

  Future<bool> updateObject(FlowInstance item) {
    return update(flowInstances).replace(item);
  }

  Future<int> deleteById(String id) {
    return (delete(flowInstances)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteObject(FlowInstance flowInstance) {
    return deleteById(flowInstance.id);
  }

  Selectable<AssignmentModel> selectFlowInstances({
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
        select(flowInstances)
            // ..where((a) => a.activity.equals(activityId)))
            .join([
      innerJoin(teams, teams.id.equalsExp(flowInstances.team)),
      innerJoin(act, act.id.equalsExp(flowInstances.activity)),
      innerJoin(ous, ous.id.equalsExp(flowInstances.orgUnit)),
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
            expression: db.flowInstances.flowInstanceDate,
            mode: OrderingMode.desc),
        OrderingTerm(expression: db.flowInstances.id),
      ]);

    // Map rows to model
    return query.map((row) {
      final a = row.readTable(flowInstances);
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
        startDate: a.flowInstanceDate,
        dueDate: null,
        status: a.flowStatus ?? AssignmentStatus.PLANNED,
      );
    });
  }
//
// // FlowInstanceCardProjection is a simple class to hold flat query results
// // map List<FlowInstanceCardProjection> to List<FlowInstanceCardViewModel>
//   Selectable<FlowInstanceModel> watchFlowInstanceCardsForActivity2(
//       String activityId,
//       {int page = 1,
//       int pageSize = 20}) {
//     // final offset = (page - 1) * pageSize;
//     final JoinedSelectStatement<HasResultSet, dynamic> query =
//         (select(db.flowInstances)..where((a) => a.activity.equals(activityId)))
//             .join([
//       innerJoin(db.teams, db.teams.id.equalsExp(db.flowInstances.team)),
//       innerJoin(
//           db.activities, db.activities.id.equalsExp(db.flowInstances.activity)),
//       innerJoin(db.orgUnits, db.orgUnits.id.equalsExp(db.flowInstances.orgUnit)),
//     ]);
//
//     final result = query.map((row) {
//       final activity = row.readTable(activities);
//       final team = row.readTable(teams);
//       final orgUnit = row.readTable(orgUnits);
//       return FlowInstanceModel(
//         id: row.readTable(flowInstances).id,
//         activity: IdentifiableModel(
//             id: activityId, code: activity.code, name: activity.name),
//         orgUnit: IdentifiableModel(
//             id: orgUnit.id, code: orgUnit.code, name: orgUnit.name),
//         team: IdentifiableModel(id: team.id, code: team.code, name: team.code),
//         startDay: row.readTable(flowInstances).startDay,
//         startDate: row.readTable(flowInstances).startDate,
//         dueDate: null,
//         // reportedResources: {},
//         status: row.readTable(flowInstances).progressStatus ??
//             FlowInstanceStatus.NOT_STARTED,
//       );
//     });
//     return result;
//   }
}
