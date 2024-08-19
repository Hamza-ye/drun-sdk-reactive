import 'package:d2_remote/modules/datarun/form/queries/data_form_submission.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/dynamic_form.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_definition.query.dart';

class FormModule {
  static createTables() async {
    await DynamicFormQuery().createTable();
    await FormDefinitionQuery().createTable();
    await DataFormSubmissionQuery().createTable();
    // await FormOrgUnitQuery().createTable();
  }

  DynamicFormQuery get form => DynamicFormQuery();

  // FormOrgUnitQuery get formOrgUnit => FormOrgUnitQuery();

  FormDefinitionQuery get formDefinition => FormDefinitionQuery();

  DataFormSubmissionQuery get formSubmission => DataFormSubmissionQuery();
}
