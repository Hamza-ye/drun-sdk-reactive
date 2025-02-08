import 'package:d2_remote/modules/metadatarun/option_set/queries/option_set.query.dart';

class OptionSetModule {
  static createTables() async {
    return await OptionSetQuery().createTable();
  }

  OptionSetQuery get optionSet => OptionSetQuery();
}
