import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/reference_field_info.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';

class DynamicFormField {
  final String type;
  final Map<String, String> label;
  final String name;
  final String? listName;
  final bool mandatory;
  final bool mainField;
  final List<Rule>? rules;
  final String? fieldValueRenderingType;
  final ReferenceInfo? referenceInfo;
  final String? choiceFilter;

  DynamicFormField(
      {required this.label,
      required this.mandatory,
      required this.mainField,
      this.listName,
      required this.type,
      required this.name,
      this.rules,
      this.fieldValueRenderingType,
      this.referenceInfo,
      this.choiceFilter});

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    final rules = json['rules'] != null
        ? (parseDynamicList(json['rules']) as List)
            .map((ruleField) => Rule.fromJson(ruleField))
            .toList()
        : null;

    return DynamicFormField(
      type: json['type'],
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      name: json['name'],
      mandatory: json['mandatory'] ?? false,
      mainField: json['mainField'] ?? false,
      listName: json['listName'],
      rules: rules,
      referenceInfo: json['referenceInfo'] != null
          ? ReferenceInfo.fromJson(json['referenceInfo'] is String
              ? jsonDecode(json['referenceInfo'])
              : json['referenceInfo'])
          : null,
      choiceFilter: json['choiceFilter'],
      fieldValueRenderingType: json['fieldValueRenderingType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'label': jsonEncode(label),
      'name': name,
      'mandatory': mandatory,
      'mainField': mainField,
      'rules': rules != null
          ? jsonEncode(rules!.map((rule) => rule.toJson()).toList())
          : null,
      // 'options': options != null
      //     ? jsonEncode(options!.map((option) => option.toJson()).toList())
      //     : null,
      'listName': listName,
      'choiceFilter': choiceFilter,
      'referenceField':
          referenceInfo != null ? jsonEncode(referenceInfo!.toJson()) : null,
      'fieldValueRenderingType': fieldValueRenderingType,
    };
  }
}
