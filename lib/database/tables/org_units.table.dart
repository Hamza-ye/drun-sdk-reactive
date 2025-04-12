import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// OrgUnit Table
class OrgUnits extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get path => text().nullable()();

  TextColumn get label =>
      text().map(const MapConverter()).clientDefault(() => '{}')();

  TextColumn get parent => text().references(OrgUnits, #id).nullable()();

  // TextColumn get ancestors => text().nullable()();

  // TextColumn get geometry => text().nullable()();

  /// Scope stored as text with a converter.
  TextColumn get scope =>
      text().map(const EnumNameConverter(EntityScope.values)).nullable()();
}
