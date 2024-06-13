import 'package:d2_remote/modules/datarun/form/queries/dynamic_form.query.dart';

class FormModule {
  static createTables() async {
    await DynamicFormQuery().createTable();
  }

  DynamicFormQuery get form => DynamicFormQuery();
}
