import 'package:d2_remote/modules/metadata/option_set/queries/option.query.dart';
import 'package:d2_remote/modules/metadata/option_set/queries/option_group.query.dart';
import 'package:d2_remote/modules/metadata/option_set/queries/option_group_option.query.dart';
import 'package:d2_remote/modules/metadata/option_set/queries/option_set.query.dart';

// replaced OptionSetModule as the parent module
class OptionModule {
  static createTables() async {
    await OptionGroupQuery().createTable();
    await OptionSetQuery().createTable();
    await OptionQuery().createTable();
    await OptionGroupOptionQuery().createTable();
  }

  OptionSetQuery get optionSet => OptionSetQuery();

  OptionQuery get option => OptionQuery();

  OptionGroupQuery get optionGroup => OptionGroupQuery();

  OptionGroupOptionQuery get optionGroupOption => OptionGroupOptionQuery();
}
