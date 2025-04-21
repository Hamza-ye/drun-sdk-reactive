import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// --- Drift Table Definition ---
class FormVersions extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get form => text().generatedAs(id.substr(1, 11), stored: true)();

  /// Version is an integer.
  IntColumn get version => integer()();

  /// List of Template objects (as List<Template>), stored as JSON.
  TextColumn get treeFields =>
      text().map(const TemplateListConverter()).withDefault(Constant('[]'))();

  /// List of FormOption objects, stored as JSON.
  TextColumn get options =>
      text().map(const FormOptionListConverter()).withDefault(Constant('[]'))();

  /// List of DOptionSet objects, stored as JSON.
  TextColumn get optionSets =>
      text().map(const DOptionSetListConverter()).withDefault(Constant('[]'))();

  /// Label map is non-null.
  TextColumn get label =>
      text().map(const MapConverter()).withDefault(Constant('[]'))();

  /// Default locale.
  TextColumn get defaultLocal => text().nullable()();

  /// fieldsConf stored as IList<Template>, as JSON.
  TextColumn get fieldsConf =>
      text().map(const TemplateListConverter()).withDefault(Constant('[]'))();

  /// sections stored as IList<Template>, as JSON.
  TextColumn get sections =>
      text().map(const TemplateListConverter()).withDefault(Constant('[]'))();

  /// Description is nullable.
  TextColumn get description => text().nullable()();

  /// Validation strategy stored as text via a converter.
  TextColumn get validationStrategy => text()
      .map(const EnumNameConverter(ValidationStrategy.values))
      .nullable()();
}
