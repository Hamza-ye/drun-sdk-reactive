import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';
@TableIndex.sql('''
  CREATE INDEX data_element_name_idx ON data_elements (name);
''')
class DataElements extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get description => text().nullable()();

  TextColumn get type =>
      text().map(const EnumNameConverter(ValueType.values))();

  /// Mandatory flag, defaulting to false.
  BoolColumn get mandatory => boolean().nullable()();

  /// defaultValue stored as text (adjust converter if needed).
  TextColumn get defaultValue => text().nullable()();

  /// scannedCodeProperties is stored as JSON.
  TextColumn get scannedCodeProperties =>
      text().map(const ScannedCodePropertiesConverter()).nullable()();

  /// gs1Enabled flag, defaulting to false.
  BoolColumn get gs1Enabled => boolean().nullable()();

  /// resourceType stored as text; we convert between MetadataResourceType and String.
  TextColumn get resourceType => text()
      .map(const EnumNameConverter(MetadataResourceType.values))
      .nullable()();

  /// resourceMetadataSchema stored as text.
  TextColumn get resourceMetadataSchema => text().nullable()();
}
