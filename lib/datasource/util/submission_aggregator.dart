import 'package:d_sdk/core/form/element_template/section_template.entity.dart';
import 'package:d_sdk/core/form/element_template/template.dart';
import 'package:d_sdk/core/form/tree/element_tree_service.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/datasource/util/field_value.dart';

class FormDataService {
  static Map<String, FieldValue> extractValues(
      Map<String, dynamic> formData, List<Template> fieldTree) {
    Map<String, FieldValue> extractedValues = {};

    void _extract(Map<String, dynamic> data, Iterable<Template> fields) {
      fields.forEach((Template field) {
        if (field.name != null) {
          if (field is SectionTemplate && data.containsKey(field.name)) {
            if (field.repeatable && data[field.name] is List) {
              final items = data[field.name]
                  .map<Map<String, dynamic>>(
                      (item) => Map<String, dynamic>.of(item))
                  .toList();
              _extract(_sumNumericResources(items), field.children);
            } else {
              _extract(
                  data[field.name],
                  ElementTreeService.getImmediateChildren(
                      field.path, field.children));
            }
          } else if (field.type == ValueType.Progress &&
              data.containsKey(field.name)) {
            final key = field.name;
            final value = data[key];
            extractedValues[field.name!] = FieldValue(
                id: field.id,
                name: field.name!,
                valueType: field.type!,
                optionSet: field.optionSet,
                label: field.label.unlock,
                showInSummary: field.mainField,
                value: value);
          }
          /*else if (field.type == ValueType.Team &&
              data.containsKey(field.name)) {
            extractedValues[field.name!] = activityModel.managedTeams
                    .firstOrNullWhere((t) => t.id == data[field.name])
                    ?.name ??
                data[field.name];
          }*/
          else if (field.type?.isSelectType == true &&
              field.optionSet != null &&
              data.containsKey(field.name)) {
            // final optionMap = formTemplate.optionMap;
            // final String? optionSetName =
            //     formTemplate.optionSets[field.optionSet!]?.name;
            // final List<DataOption> options = optionMap[field.optionSet] ?? [];
            if (field.type == ValueType.SelectOne) {
              final key = field.name;
              final value = data[key];
              extractedValues[field.name!] = FieldValue(
                  id: field.id,
                  name: field.name!,
                  valueType: field.type!,
                  optionSet: field.optionSet,
                  label: field.label.unlock,
                  showInSummary: field.mainField,
                  value: value);
            } else if (field.type == ValueType.SelectMulti &&
                data[field.name] is List) {
              if (field.type == ValueType.SelectOne) {
                final key = field.name;
                final value = data[key];
                extractedValues[field.name!] = FieldValue(
                    id: field.id,
                    name: field.name!,
                    valueType: field.type!,
                    optionSet: field.optionSet,
                    label: field.label.unlock,
                    showInSummary: field.mainField,
                    value: value);
              }
              // final List<DataOption> selected = options
              //     .where((o) =>
              //         o.name == data[field.name] || o.code == data[field.name])
              //     .toList();
              // extractedValues[field.name!] = selected
              //     .map((o) => getItemLocalString(o.label, defaultString: ''))
              //     .join(',');
            } else if (data.containsKey(field.name)) {
              final key = field.name;
              final value = data[key];
              extractedValues[field.name!] = FieldValue(
                  id: field.id,
                  name: field.name!,
                  valueType: field.type!,
                  optionSet: field.optionSet,
                  label: field.label.unlock,
                  showInSummary: field.mainField,
                  value: value);
            }
          }
        }
      });
    }

    _extract(formData, fieldTree);

    return extractedValues;
  }

  static Map<String, double> _sumNumericResources(
      List<Map<String, dynamic>> formData) {
    Map<String, double> subTotals = {};

    void _sumResources(Map<String, dynamic> data) {
      data.forEach((key, value) {
        if (value is num) {
          subTotals[key] = (subTotals[key] ?? 0) + value.toDouble();
        } else if (value is Map<String, dynamic>) {
          _sumResources(value);
        } else if (value is List) {
          value.forEach((element) {
            if (element is Map<String, dynamic>) {
              _sumResources(element);
            }
          });
        }
      });
    }

    for (var formData in formData) {
      _sumResources(formData);
    }

    return subTotals;
  }
}
