import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// DActivity Table
@TableIndex(name: 'activity_disabled_idx', columns: {#disabled})
class Activities extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get project => text().references(Projects, #id)();

  BoolColumn get disabled => boolean().clientDefault(() => false)();

  DateTimeColumn get startDate => dateTime().nullable()();

  DateTimeColumn get endDate => dateTime().nullable()();

  TextColumn get description => text().nullable()();
}
