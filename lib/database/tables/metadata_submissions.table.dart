import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class MetadataSubmissions extends Table with BaseTableMixin, IdentifiableMixin {
  /// Resource type (non-null), stored as text using a converter.
  TextColumn get resourceType =>
      text().map(const EnumNameConverter(MetadataResourceType.values))();

  /// Metadata schema (non-null text).
  TextColumn get metadataSchema => text()();

  /// Serial number (non-null integer).
  IntColumn get serialNumber => integer()();

  /// Version (non-null integer).
  IntColumn get version => integer()();

  /// Resource ID (non-null text).
  TextColumn get resourceId => text()();

  /// formData stored as a JSON string (nullable).
  TextColumn get formData =>
      text().map(const NullAwareMapConverter()).nullable()();

  /// createdBy (nullable text).
  TextColumn get createdBy => text().nullable()();

  /// lastModifiedBy (nullable text).
  TextColumn get lastModifiedBy => text().nullable()();
}
