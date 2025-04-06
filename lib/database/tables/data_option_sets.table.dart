import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataOptionSets extends Table with BaseTableMixin, IdentifiableMixin {
  /// TextColumn options => text().map(const FormOptionListConverter()).nullable()();
}
