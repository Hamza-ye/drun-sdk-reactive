import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class MetadataSubmissions extends Table with BaseTableMixin, IdentifiableMixin {
  /// Resource type (non-null), stored as text using a converter.
  late final TextColumn resourceType =
      text().map(const EnumNameConverter(MetadataResourceType.values))();

  /// Metadata schema (non-null text).
  late final TextColumn metadataSchema = text()();

  /// Serial number (non-null integer).
  late final IntColumn serialNumber = integer()();

  /// Version (non-null integer).
  late final IntColumn version = integer()();

  /// Resource ID (non-null text).
  late final TextColumn resourceId = text()();

  /// formData stored as a JSON string (nullable).
  late final TextColumn formData =
      text().map(const MapConverter()).nullable()();

  /// createdBy (nullable text).
  late final TextColumn createdBy = text().nullable()();

  /// lastModifiedBy (nullable text).
  late final TextColumn lastModifiedBy = text().nullable()();
}
