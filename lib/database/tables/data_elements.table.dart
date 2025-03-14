import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataElements extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn description = text().nullable()();

  late final TextColumn type =
      text().map(const EnumNameConverter(ValueType.values)).nullable()();

  /// Mandatory flag, defaulting to false.
  late final BoolColumn mandatory =
      boolean().withDefault(const Constant(false))();

  /// defaultValue stored as text (adjust converter if needed).
  late final TextColumn defaultValue = text().nullable()();

  /// label is stored as JSON in a text column.
  late final TextColumn label =
      text().map(const MapConverter<String>()).withDefault(Constant('{}'))();

  /// scannedCodeProperties is stored as JSON.
  late final TextColumn scannedCodeProperties =
      text().map(const ScannedCodePropertiesConverter()).nullable()();

  /// gs1Enabled flag, defaulting to false.
  late final BoolColumn gs1Enabled =
      boolean().withDefault(const Constant(false))();

  /// resourceType stored as text; we convert between MetadataResourceType and String.
  late final TextColumn resourceType = text()
      .map(const EnumNameConverter(MetadataResourceType.values))
      .nullable()();

  /// resourceMetadataSchema stored as text.
  late final TextColumn resourceMetadataSchema = text().nullable()();
}
