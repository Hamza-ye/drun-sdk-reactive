import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'data_value_template_path', columns: {#templatePath})
class DataValues extends Table with BaseTableMixin {
  /// Path of the Repeat in the FormTemplate – non-null.
  TextColumn get templatePath => text()();

  /// Reference to the parent RepeatInstance (nullable).
  TextColumn get parent => text().references(RepeatInstances, #id).nullable()();

  /// Reference to the root submission – non-null.
  TextColumn get submission => text().references(DataSubmissions, #id)();

  /// Data element identifier – non-null.
  TextColumn get dataElement => text().references(DataElements, #id)();

  /// The value is stored as TEXT. If needed, a converter could be added for lists.
  TextColumn get value => text().nullable()();
}
