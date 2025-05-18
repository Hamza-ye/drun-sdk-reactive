import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'assignment_status_idx', columns: {#progressStatus})
class Assignments extends Table with BaseTableMixin {
  @ReferenceName("activityAssignments")
  TextColumn get activity => text().references(Activities, #id)();

  @ReferenceName("teamAssignments")
  TextColumn get team => text().references(Teams, #id)();

  @ReferenceName("orgUnitAssignments")
  TextColumn get orgUnit => text().references(OrgUnits, #id)();

  /// Start day as integer, nullable
  IntColumn get startDay => integer().nullable()();

  /// Start date as text (ISO string, for example)
  DateTimeColumn get startDate => dateTime().nullable()();

  /// Assignment status stored as text via a converter
  TextColumn get progressStatus =>
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

// TextColumn get activityName => text()();
//
// TextColumn get orgUnitCode => text()();
//
// TextColumn get orgUnitName => text()();

// TextColumn get teamCode => text()();

// /// allocatedResources stored as JSON string
// TextColumn get allocatedResources => text()
//     .map(const NullAwareMapConverter())
//     .nullable()();

// /// forms stored as JSON string representing a List<String>
// TextColumn get forms => text()
//     .map(const NullAwareListConverter<String>())
//     .nullable()();

// /// scope stored as text via a converter
// TextColumn get scope =>
//     text().map(const EnumNameConverter(EntityScope.values))();
}
