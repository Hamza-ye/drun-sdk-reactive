import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'submission_status', columns: {#status})
@TableIndex(name: 'submission_deleted', columns: {#deleted})
class DataSubmissions extends Table with BaseTableMixin {
  BoolColumn get deleted => boolean().clientDefault(() => false)();

  /// Form template id is stored as text (nullable).
  TextColumn get form => text()();

  // TextColumn get form => text().generatedAs(formVersion.substr(1, 11))();

  /// Many-to-one references stored as text.
  TextColumn get formVersion =>
      text().references(DataFormTemplateVersions, #id)();

  /// Version is non-nullable integer.
  IntColumn get version => integer()();

  /// Nullable assignment reference.
  TextColumn get assignment => text().references(Assignments, #id).nullable()();

  /// Many-to-one references stored as text.
  TextColumn get team => text().references(Teams, #id).nullable()();

  /// Nullable orgUnit reference.
  TextColumn get orgUnit => text().references(OrgUnits, #id).nullable()();

  /// Progress Status stored as text via a converter; nullable.
  TextColumn get progressStatus =>
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  // Use a single state field with a converter to/from enum
  TextColumn get status =>
      text().map(const EnumNameConverter(SubmissionStatus.values)).nullable()();

  DateTimeColumn get lastSyncDate => dateTime().nullable()();

  TextColumn get lastSyncMessage => text().nullable()();

  DateTimeColumn get startEntryTime =>
      dateTime().clientDefault(() => DateTime.now().toUtc())();

  /// last finalized time
  DateTimeColumn get finishedEntryTime => dateTime().nullable()();

  TextColumn get createdBy => text().nullable()();

  /// formData is stored as a JSON string.
  TextColumn get formData =>
      text().map(const MapConverter()).clientDefault(() => '{}')();
}
