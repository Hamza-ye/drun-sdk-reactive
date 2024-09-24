import 'package:d2_remote/modules/datarun/form/queries/data_form_submission.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/dynamic_form.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_definition.query.dart';

class FormModule {
  static createTables() async {
    await FormTemplateQuery().createTable();
    await FormTemplateVQuery().createTable();
    await DataFormSubmissionQuery().createTable();
    // await FormOrgUnitQuery().createTable();
  }

  FormTemplateQuery get formTemplate => FormTemplateQuery();

  // FormOrgUnitQuery get formOrgUnit => FormOrgUnitQuery();

  FormTemplateVQuery get formTemplateV => FormTemplateVQuery();

  DataFormSubmissionQuery get formSubmission => DataFormSubmissionQuery();
}
