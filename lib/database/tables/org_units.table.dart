import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// OrgUnit Table
class OrgUnits extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get path => text().nullable()();

  TextColumn get label =>
      text().map(const MapConverter<dynamic>()).clientDefault(() => '{}')();

  TextColumn get parent => text().nullable()();

  TextColumn get ancestors => text().nullable()();

  TextColumn get geometry => text().nullable()();

  TextColumn get scope => text().nullable()();
}
