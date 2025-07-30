import 'package:d_sdk/core/form/element_template/template.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/datasource/util/field_value.dart';

abstract class SubmissionAggregator {
  Map<String, FieldValue> extractValues(
    Map<String, dynamic> formData,
    List<Template> formTemplateVersion,
  );
}
