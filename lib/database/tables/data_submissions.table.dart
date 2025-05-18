import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'submission_status_idx', columns: {#status})
class DataSubmissions extends Table with BaseTableMixin {
  BoolColumn get deleted => boolean().clientDefault(() => false)();

  @ReferenceName("formSubmissions")
  TextColumn get form => text().references(FormTemplateVersions, #id)();

  @ReferenceName("formVersionSubmissions")
  TextColumn get formVersion => text().references(FormTemplateVersions, #id)();

  IntColumn get versionNumber => integer()();

  @ReferenceName("assignmentSubmissions")
  TextColumn get assignment => text().references(Assignments, #id)();

  @ReferenceName("teamSubmissions")
  TextColumn get team => text().references(Teams, #id)();

  @ReferenceName("orgUnitSubmissions")
  TextColumn get orgUnit => text().references(OrgUnits, #id).nullable()();

  TextColumn get progressStatus =>
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  TextColumn get status =>
      text().map(const EnumNameConverter(SubmissionStatus.values))();

  TextColumn get formData =>
      text().map(const NullAwareMapConverter()).nullable()();

  DateTimeColumn get lastSyncDate => dateTime().nullable()();

  TextColumn get lastSyncMessage => text().nullable()();

  DateTimeColumn get startEntryTime =>
      dateTime().clientDefault(() => DateTime.now().toUtc())();

  DateTimeColumn get finishedEntryTime => dateTime().nullable()();

  TextColumn get createdBy => text().nullable()();

  /// canEdit a submitted data.
  BoolColumn get canEdit => boolean().nullable()();

  /// canDelete a submitted data.
  BoolColumn get canDelete => boolean().nullable()();
}
