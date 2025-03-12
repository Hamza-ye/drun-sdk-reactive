import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

// OuLevel Table
class OuLevels extends Table with BaseTableMixin, IdentifiableMixin {
  late final IntColumn level = integer()();

  late final IntColumn offlineLevels = integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
