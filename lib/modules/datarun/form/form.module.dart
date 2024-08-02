import 'package:d2_remote/modules/datarun/form/queries/dynamic_form.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_definition.query.dart';

class FormModule {
  static createTables() async {
    await DynamicFormQuery().createTable();
    await FormDefinitionQuery().createTable();
  }

  DynamicFormQuery get form => DynamicFormQuery();

  FormDefinitionQuery get formDefinition => FormDefinitionQuery();
}
