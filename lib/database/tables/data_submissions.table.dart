import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// each submission, referencing either FORM_TEMPLATE if single‐submission,
/// or DATA_STAGE if staged
@TableIndex(name: 'data_instance_status_idx', columns: {#syncState})
class DataSubmissions extends Table with BaseTableMixin {
  BoolColumn get deleted => boolean().clientDefault(() => false)();

  DateTimeColumn get deletedAt => dateTime().nullable()();

  /// analogous to program
  @ReferenceName("templateData")
  TextColumn get dataTemplate => text().references(FormTemplates, #id)();

  @ReferenceName("templateVerData")
  TextColumn get dataTemplateVer =>
      text().references(FormTemplateVersions, #id)();

  /// analogous to enrollment
  // @ReferenceName("dataInstances")
  TextColumn get flowInstance =>
      text().references(FlowInstances, #id).nullable()();

  TextColumn get flowType => text().references(FlowTypes, #id)();

  /// who
  @ReferenceName("teamDataInstances")
  TextColumn get team => text().references(Teams, #id).nullable()();

  /// where
  @ReferenceName("ouDataInstances")
  TextColumn get orgUnit => text().references(OrgUnits, #id).nullable()();

  // null if single-stage
  @ReferenceName("stageData")
  TextColumn get stageDefinition =>
      text().references(StageDefinitions, #id).nullable()();

  /// referencing what, (In case of entity bound submissions or null
  @ReferenceName("entityInstanceData")
  TextColumn get entityInstance =>
      text().references(EntityInstances, #id).nullable()();

  DateTimeColumn get startEntryTime =>
      dateTime().clientDefault(() => DateTime.now().toUtc())();

  DateTimeColumn get finishedEntryTime => dateTime().nullable()();

  TextColumn get formData =>
      text().map(const NullAwareMapConverter()).nullable()();

  DateTimeColumn get updatedAtClient => dateTime().nullable()();

  //<editor-fold desc=" local states">
  TextColumn get syncState =>
      text().map(const EnumNameConverter(InstanceSyncStatus.values))();

  DateTimeColumn get lastSyncDate => dateTime().nullable()();

  TextColumn get lastSyncMessage => text().nullable()();

  /// is already synced to server
  BoolColumn get isToUpdate => boolean()();

//</editor-fold>
}
