import 'package:d2_remote/modules/datarun/form/queries/data_form_submission.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_template.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_version.query.dart';

class FormModule {
  static createTables() async {
    await FormTemplateQuery().createTable();
    await FormVersionQuery().createTable();
    await DataFormSubmissionQuery().createTable();
    // await FormOrgUnitQuery().createTable();
  }

  FormTemplateQuery get formTemplate => FormTemplateQuery();

  // FormOrgUnitQuery get formOrgUnit => FormOrgUnitQuery();

  FormVersionQuery get formTemplateV => FormVersionQuery();

  DataFormSubmissionQuery get formSubmission => DataFormSubmissionQuery();
}
