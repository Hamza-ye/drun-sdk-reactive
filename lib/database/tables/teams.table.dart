import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class Teams extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get activity => text().references(Activities, #id)();

  /// Boolean columns with defaults.
  BoolColumn get disabled => boolean().nullable()();

  BoolColumn get deleteClientData => boolean().nullable()();

  /// Form permissions stored as JSON representing a list of TeamFormPermission.
  TextColumn get formPermissions => text()
      .map(const TeamFormPermissionListConverter())
      .clientDefault(() => '[]')();

  /// Scope stored as text with a converter.
  TextColumn get scope =>
      text().map(const EnumNameConverter(EntityScope.values)).nullable()();
}
