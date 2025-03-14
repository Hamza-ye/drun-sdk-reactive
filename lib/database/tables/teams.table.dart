import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class Teams extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn activity = text().references(Activities, #id)();

  /// Boolean columns with defaults.
  late final BoolColumn disabled =
      boolean().withDefault(const Constant(true))();

  late final BoolColumn deleteClientData =
      boolean().withDefault(const Constant(false))();

  /// Properties stored as a JSON string.
  late final TextColumn properties =
      text().map(const MapConverter<Object?>()).nullable()();

  /// Form permissions stored as JSON representing a list of TeamFormPermission.
  late final TextColumn formPermissions =
      text().map(const TeamFormPermissionListConverter()).nullable()();

  /// Scope stored as text with a converter.
  late final TextColumn scope =
      text().map(const EnumNameConverter(EntityScope.values)).nullable()();
}
