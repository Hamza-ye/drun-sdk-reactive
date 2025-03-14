import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'data_value_template_path', columns: {#templatePath})
class DataValues extends Table with BaseTableMixin {
  /// Path of the Repeat in the FormTemplate – non-null.
  late final TextColumn templatePath = text()();

  /// Reference to the parent RepeatInstance (nullable).
  late final TextColumn parent =
      text().nullable().references(RepeatInstances, #id)();

  /// Reference to the root submission – non-null.
  late final TextColumn submission =
      text().references(DataFormSubmissions, #id)();

  /// Data element identifier – non-null.
  late final TextColumn dataElement = text().references(DataElements, #id)();

  /// The value is stored as TEXT. If needed, a converter could be added for lists.
  late final TextColumn value = text().nullable()();
}
