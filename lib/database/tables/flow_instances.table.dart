import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'flow_instance_status_idx', columns: {#flowStatus})
class FlowInstances extends Table with BaseTableMixin {
  @ReferenceName("flowInstances")
  TextColumn get flowType => text().references(FlowTypes, #id)();

  @ReferenceName("flowInstances")
  TextColumn get activity => text().references(Activities, #id)();

  @ReferenceName("flowInstances")
  TextColumn get team => text().references(Teams, #id)();

  @ReferenceName("flowInstances")
  TextColumn get orgUnit => text().references(OrgUnits, #id)();

  DateTimeColumn get flowInstanceDate => dateTime().nullable()();

  /**
   * If you plan to pre-link an entity (e.g. a Household),
   * otherwise = null for “new” entities.
   */
  @ReferenceName("flowInstances")
  TextColumn get entityInstance =>
      text().references(EntityInstances, #id).nullable()();

  /// A map of stageId → list of submissionIds (as JSON),
  /// or = null if SINGLE/SINGLE stage.
  /// not strictly required, just to Speed Up UI & Workflow Checks, Model the
  /// “Assignment State Machine” so it can store additional per‐stage metadata,
  /// and to avoid Joins Under Heavy Load
  TextColumn get stepStates =>
      text().map(const NullAwareMapConverter()).nullable()();

  TextColumn get syncState =>
      text().map(const EnumNameConverter(InstanceSyncStatus.values))();

  //
  // TextColumn get flowStatus =>
  //     text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  TextColumn get flowStatus =>
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  DateTimeColumn get completedDate => dateTime().nullable()();

  DateTimeColumn get updatedAtClient => dateTime().nullable()();
}
