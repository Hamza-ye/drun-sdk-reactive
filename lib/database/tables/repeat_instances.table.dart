import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'repeat_template_path', columns: {#templatePath})
class RepeatInstances extends Table with BaseTableMixin {
  /// Path of the Repeat in the FormTemplate (non-null)
  TextColumn get templatePath => text()();

  TextColumn get submission => text().references(DataSubmissions, #id)();

  /// reference to nearest parent RepeatInstance (nullable)
  TextColumn get parent => text().references(RepeatInstances, #id).nullable()();

  /// Repeat index for order and identity (non-null)
  IntColumn get repeatIndex => integer()();
}
