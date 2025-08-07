import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/core/form/form_data_aggregator.dart';
import 'package:d_sdk/datasource/util/field_value.dart';

class FormDataUtil {
  static Map<String, FieldValue> extractTemplateValue(
      Map<String, dynamic> data, Iterable<Template> fields) {
    Map<String, FieldValue> formValues = {};

    for (final template in fields) {
      final path = template.path!.replaceFirst(template.id, template.name!);
      final raw = getRawByPath(data, path);
      Aggregation aggregation = template.aggregation ??
          Template.getDefaultAggregation(template.type) ??
          Aggregation.concat;
      // if (aggregation == null) {
      //   formValues[template.path!] = FieldValue(
      //     id: template.id,
      //     name: template.name!,
      //     valueType: template.type!,
      //     value: raw,
      //   );
      // } else {
      final aggregationValue = FormDataAggregator.aggregate(raw, aggregation);
      formValues[template.path!] = FieldValue(
        id: template.id,
        name: template.name!,
        valueType: template.type!,
        value: aggregationValue,
      );
      // }
    }

    return formValues;
  }

  /// Returns either:
  ///  - a single primitive (String, num, bool),
  ///  - or a List of primitives if we traversed a repeatable section.
  static dynamic getRawByPath(
    Map<String, dynamic> data,
    String path, {
    String delimiter = '.',
  }) {
    final segments = path.split(delimiter);
    dynamic current = data;

    for (final seg in segments) {
      if (current == null) return null;

      if (current is Map<String, dynamic>) {
        current = current[seg];
      } else if (current is List) {
        // propagate into each item
        current = current
            .map((item) => item is Map<String, dynamic> ? item[seg] : null)
            .toList();
      } else {
        // primitive at non-terminal segment: dead-end
        return null;
      }
    }

    return current;
  }
}
