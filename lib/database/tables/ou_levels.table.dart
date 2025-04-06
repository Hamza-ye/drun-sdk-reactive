import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// OuLevel Table
class OuLevels extends Table with BaseTableMixin, IdentifiableMixin {
  IntColumn get level => integer()();

  IntColumn get offlineLevels => integer().nullable()();
}
