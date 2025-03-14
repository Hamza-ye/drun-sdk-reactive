import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'repeat_template_path', columns: {#repeatTemplatePath})
class RepeatInstances extends Table with BaseTableMixin {
  late final TextColumn submission =
      text().references(DataFormSubmissions, #id)();

  /// Path of the Repeat in the FormTemplate (non-null)
  late final TextColumn repeatTemplatePath = text()();

  /// reference to nearest parent RepeatInstance (nullable)
  late final TextColumn parent =
      text().nullable().references(RepeatInstances, #id)();

  /// Repeat index for order and identity (non-null)
  late final IntColumn repeatIndex = integer()();
}
