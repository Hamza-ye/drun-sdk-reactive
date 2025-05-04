import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/converters/null_aware_list.converter.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'assignment_status_idx', columns: {#progressStatus})
@TableIndex(name: 'assignment_start_date_idx', columns: {#startDate})
@TableIndex(name: 'assignment_scope_idx', columns: {#scope})
class Assignments extends Table with BaseTableMixin {
  TextColumn get activity => text().references(Activities, #id)();

  TextColumn get team => text().references(Teams, #id)();

  TextColumn get orgUnit => text().references(OrgUnits, #id)();

  TextColumn get activityName => text().nullable()();

  TextColumn get orgUnitCode => text().nullable()();

  TextColumn get orgUnitName => text().nullable()();

  TextColumn get teamCode => text().nullable()();

  /// Parent reference (stored as a text foreign key, if applicable)
  TextColumn get parent => text().references(Assignments, #id).nullable()();

  IntColumn get level => integer().nullable().clientDefault(() => 1)();

  /// Start day as integer, nullable
  IntColumn get startDay => integer().nullable()();

  /// Start date as text (ISO string, for example)
  DateTimeColumn get startDate => dateTime().nullable()();

  /// Assignment status stored as text via a converter
  TextColumn get progressStatus =>
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  /// allocatedResources stored as JSON string
  TextColumn get allocatedResources => text()
      .map(const NullAwareMapConverter())
      .nullable()();

  /// forms stored as JSON string representing a List<String>
  TextColumn get forms => text()
      .map(const NullAwareListConverter<String>())
      .nullable()();

  /// scope stored as text via a converter
  TextColumn get scope =>
      text().map(const EnumNameConverter(EntityScope.values))();
}
