import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// --- Drift Table Definition ---
class FormVersions extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn optionSet = text().references(FormTemplates, #id)();

  /// List of Template objects (as List<Template>), stored as JSON.
  late final TextColumn treeFields =
      text().map(const TemplateListConverter()).nullable()();

  /// List of FormOption objects, stored as JSON.
  late final TextColumn options =
      text().map(const FormOptionListConverter()).withDefault(Constant('[]'))();

  /// List of DOptionSet objects, stored as JSON.
  late final TextColumn optionSets =
      text().map(const DOptionSetListConverter()).nullable()();

  /// Label map is non-null.
  late final TextColumn label =
      text().map(const MapConverter<String>()).withDefault(Constant('{}'))();

  /// Default locale.
  late final TextColumn defaultLocal = text()();

  /// fieldsConf stored as IList<Template>, as JSON.
  late final TextColumn fieldsConf =
      text().map(const TemplateListConverter()).nullable()();

  /// sections stored as IList<Template>, as JSON.
  late final TextColumn sections =
      text().map(const TemplateListConverter()).nullable()();

  /// Description is nullable.
  late final TextColumn description = text().nullable()();

  /// Validation strategy stored as text via a converter.
  late final TextColumn validationStrategy =
      text().map(const EnumNameConverter(ValidationStrategy.values))();

  /// Version is an integer.
  late final IntColumn version = integer()();
}
