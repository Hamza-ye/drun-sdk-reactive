import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataFormSubmissions extends Table with BaseTableMixin, IdentifiableMixin {
  // Bool columns (nullable)
  late final BoolColumn deleted =
      boolean().withDefault(const Constant(false))();

  late final BoolColumn synced = boolean().nullable()();

  late final BoolColumn syncFailed =
      boolean().withDefault(const Constant(false))();

  // isFinal is non-nullable; default to false (adjust default as needed)
  late final BoolColumn isFinal =
      boolean().withDefault(const Constant(false))();

  DateTimeColumn get lastSyncDate => dateTime().nullable()();

  late final TextColumn lastSyncMessage = text().nullable()();

  DateTimeColumn get startEntryTime =>
      dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get finishedEntryTime => dateTime().nullable()();

  late final TextColumn createdBy = text().nullable()();

  // Status stored as text via a converter; nullable.
  late final TextColumn status =
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  // Many-to-one references stored as text.
  late final TextColumn team = text().nullable().references(Teams, #id)();

  // Form template id is stored as text (nullable).
  late final TextColumn formTemplateId = text().nullable()();

  // Many-to-one references stored as text.
  late final TextColumn formVersion = text().references(FormVersions, #id)();

  // Version is non-nullable integer.
  late final IntColumn version = integer()();

  // Nullable assignment reference.
  late final TextColumn assignment =
      text().nullable().references(Assignments, #id)();

  // Nullable orgUnit reference.
  late final TextColumn orgUnit = text().nullable().references(OrgUnits, #id)();

  // formData is stored as a JSON string.
  late final TextColumn formData =
      text().map(const MapConverter()).nullable()();
}
