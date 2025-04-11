import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// --- Drift Table Definition ---
class DataFormTemplateVersions extends Table
    with BaseTableMixin, IdentifiableMixin {
  TextColumn get form => text().generatedAs(id.substr(1, 11), stored: true)();

  /// Version is an integer.
  IntColumn get version => integer()();

  /// List of FormOption objects, stored as JSON.
  TextColumn get options =>
      text().map(const FormOptionListConverter()).clientDefault(() => '[]')();

  /// List of DOptionSet objects, stored as JSON.
  TextColumn get optionSets =>
      text().map(const DOptionSetListConverter()).clientDefault(() => '[]')();

  /// Label map is non-null.
  TextColumn get label =>
      text().map(const MapConverter<dynamic>()).clientDefault(() => '{}')();

  /// Default locale.
  TextColumn get defaultLocal => text()();

  /// fieldsConf stored as IList<Template>, as JSON.
  TextColumn get fields =>
      text().map(const TemplateListConverter()).clientDefault(() => '[]')();

  /// sections stored as IList<Template>, as JSON.
  TextColumn get sections =>
      text().map(const TemplateListConverter()).clientDefault(() => '[]')();

  /// Description is nullable.
  TextColumn get description => text().nullable()();

  /// Validation strategy stored as text via a converter.
  TextColumn get validationStrategy =>
      text().map(const EnumNameConverter(ValidationStrategy.values))();
}
