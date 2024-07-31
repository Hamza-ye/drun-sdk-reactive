import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';

class DynamicFormField {
  final String type;
  final Map<String, String> label;
  final String name;
  final String? listName;
  final bool mandatory;
  final bool mainField;
  final List<FormOption>? options;
  final List<Rule>? rules;

  final String? fieldValueRenderingType;

  DynamicFormField(
      {required this.label,
      required this.mandatory,
      required this.mainField,
      this.listName,
      required this.type,
      required this.name,
      this.options,
      this.rules,
      this.fieldValueRenderingType});

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    final options = json['options'] != null
        ? (parseDynamicList(json['options']) as List)
            .map((option) => FormOption.fromJson(option))
            .toList()
        : null;

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
      options: options,
      listName: json['listName'],
      rules: rules,
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
      'options': options != null
          ? jsonEncode(options!.map((option) => option.toJson()).toList())
          : null,
      'listName': listName,
      'fieldValueRenderingType': fieldValueRenderingType,
    };
  }
}
