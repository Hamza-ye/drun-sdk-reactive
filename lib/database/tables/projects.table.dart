import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

/// Project Table
class Projects extends Table with BaseTableMixin, IdentifiableMixin {
  BoolColumn get disabled => boolean().clientDefault(() => false)();
}
