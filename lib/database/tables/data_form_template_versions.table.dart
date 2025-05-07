import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// --- Drift Table Definition, id format of a template: $uid_$version ---
class DataFormTemplateVersions extends Table
    with BaseTableMixin, IdentifiableMixin {
  // TextColumn get form => text()();

  /// Version is an integer.
  IntColumn get version => integer()();

  /// Default locale.
  TextColumn get defaultLocal => text().nullable()();

  /// fieldsConf stored as IList<Template>, as JSON.
  TextColumn get fields =>
      text().map(const TemplateListConverter())();

  /// sections stored as IList<Template>, as JSON.
  TextColumn get sections =>
      text().map(const TemplateListConverter())();

  /// Description is nullable.
  TextColumn get description => text().nullable()();

  /// Validation strategy stored as text via a converter.
  TextColumn get validationStrategy => text()
      .map(const EnumNameConverter(ValidationStrategy.values))
      .nullable()();
}
