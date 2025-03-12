import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class RepeatInstances extends Table with BaseTableMixin, IdentifiableMixin {

  late final TextColumn submission = text().references(DataFormSubmissions, #id)();

  // Path of the Repeat in the FormTemplate (non-null)
  late final TextColumn templatePath = text()();

  // Parent instance (nullable)
  late final TextColumn parent = text().nullable()();

  // Repeat index for order and identity (non-null)
  late final IntColumn repeatIndex = integer()();
}
