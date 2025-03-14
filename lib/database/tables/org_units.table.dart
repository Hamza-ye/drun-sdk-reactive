import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// OrgUnit Table
class OrgUnits extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn path = text().nullable()();

  late final TextColumn label =
  text().map(const MapConverter<String>()).withDefault(Constant('{}'))();

  late final TextColumn parent = text().nullable()();

  late final TextColumn ancestors = text().nullable()();

  late final TextColumn geometry = text().nullable()();

  late final TextColumn scope = text().nullable()();
}
