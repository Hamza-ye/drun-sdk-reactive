import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';

import 'field_rule.dart';

class DynamicFormField {
  final String type;
  final String label;
  final String? fieldValueRenderingType;
  final String name;
  final List<String>? options;
  final bool required;
  final List<FieldRule>? fieldRules;
  final List<Rule>? rules;

  DynamicFormField(
      {required this.label,
      required this.required,
      required this.type,
      required this.name,
      this.fieldValueRenderingType,
      this.options,
      this.fieldRules,
      this.rules});

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    final fieldRules = json['fieldRules'] != null
        ? (parseDynamicList(json['fieldRules']) as List)
            .map((ruleField) => FieldRule.fromJson(ruleField))
            .toList()
        : null;

    final options = json['options'] != null
        ? json['options'].runtimeType == String
            ? jsonDecode(json['options']).cast<String>()
            : json['options'].cast<String>()
        : null;

    final rules = json['rules'] != null
        ? json['rules'].runtimeType == String
            ? jsonDecode(json['rules']).cast<String>()
            : json['rules'].cast<String>()
        : null;

    return DynamicFormField(
      type: json['type'],
      label: json['label'],
      name: json['name'],
      fieldValueRenderingType: json['fieldValueRenderingType'],
      required: json['required'] ?? false,
      options: options,
      fieldRules: fieldRules,
      rules: rules,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = label;
    data['type'] = type;
    data['name'] = name;
    data['options'] = options != null ? jsonEncode(options) : null;
    data['rules'] = rules != null ? jsonEncode(rules) : null;
    data['fieldRules'] = fieldRules != null
        ? jsonEncode(
            fieldRules!.map((fieldRule) => fieldRule.toJson()).toList())
        : null;
    data['fieldValueRenderingType'] = fieldValueRenderingType;
    data['required'] = required;

    return data;
  }
}
