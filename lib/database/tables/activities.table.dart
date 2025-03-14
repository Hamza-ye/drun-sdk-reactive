import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// DActivity Table
class Activities extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn project = text().references(Projects, #id)();

  late final BoolColumn disabled = boolean()();

  DateTimeColumn get startDate => dateTime().nullable()();

  DateTimeColumn get endDate => dateTime().nullable()();

  late final TextColumn description = text().nullable()();
}
