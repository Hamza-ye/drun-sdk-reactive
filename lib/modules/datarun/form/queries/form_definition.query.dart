import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_definition.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
class FormVersionQuery extends BaseQuery<FormVersion> {
  FormVersionQuery({Database? database}) : super(database: database);

  int? version;
  String? formTemplate;

  FormVersionQuery byVersion(int version) {
    this.version = version;
    return this.where(attribute: 'version', value: version);
  }

  FormVersionQuery byFormTemplate(String formTemplate) {
    this.formTemplate = formTemplate;
    return this.where(attribute: 'formTemplate', value: formTemplate);
  }
}
