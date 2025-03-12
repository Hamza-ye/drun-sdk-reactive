import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

// Project Table
class Projects extends Table with BaseTableMixin, IdentifiableMixin {
  late final BoolColumn disabled = boolean()();
}
