import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'assignment_type_planning_mode_idx', columns: {#planningMode})
class FlowTypes extends Table with BaseTableMixin {
  @ReferenceName("activityFlows")
  TextColumn get activity => text().references(Activities, #id)();

  TextColumn get name => text().nullable()();

  TextColumn get planningMode =>
      text().map(const EnumNameConverter(PlanningMode.values)).nullable()();

  TextColumn get submissionMode =>
      text().map(const EnumNameConverter(SubmissionMode.values)).nullable()();
}

enum PlanningMode { PLANNED, LOG_AS_YOU_GO }

enum SubmissionMode { SINGLE, MULTI_STAGE }
