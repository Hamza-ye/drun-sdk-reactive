import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'assignment_status_idx', columns: {#assignmentStatus})
class Assignments extends Table with BaseTableMixin {
  @ReferenceName("activityAssignments")
  TextColumn get activity => text().references(Activities, #id)();

  @ReferenceName("teamAssignments")
  TextColumn get team => text().references(Teams, #id)();

  @ReferenceName("ouAssignments")
  TextColumn get orgUnit => text().references(OrgUnits, #id)();

  DateTimeColumn get instanceDate => dateTime().nullable()();

  TextColumn get syncState =>
      text().map(const EnumNameConverter(InstanceSyncStatus.values))();

  //
  // TextColumn get flowStatus =>
  //     text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  // TextColumn get assignmentStatus =>
  //     text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  DateTimeColumn get completedDate => dateTime().nullable()();

  DateTimeColumn get updatedAtClient => dateTime().nullable()();
}
