import 'package:d_sdk/core/form/element_template/template.dart';
import 'package:d_sdk/datasource/util/field_value.dart';

abstract class SubmissionListAggregator {
  Map<String, FieldValue> extractValues(
    Map<String, dynamic> formData,
    List<Template> formTemplateVersion,
  );

  Future<int> deleteInstance(String id);

  Future<void> syncEntities(List<String> uids);
}
