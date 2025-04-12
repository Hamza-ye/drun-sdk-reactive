import 'package:d_sdk/database/converters/form_option_list.converter.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataOptionSets extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get options =>
      text().map(const FormOptionListConverter()).clientDefault(() => '[]')();
}
