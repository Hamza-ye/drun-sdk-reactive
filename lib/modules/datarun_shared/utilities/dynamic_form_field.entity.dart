import 'dart:convert';

import 'field_rule.dart';

class DynamicFormField {
  final String type;
  final String label;
  final String fieldValueRenderingType;
  final String name;
  final List<String>? options;
  final bool required;
  final FieldRule? fieldRule;

  DynamicFormField({
    required this.label,
    required this.required,
    required this.type,
    required this.name,
    required this.fieldValueRenderingType,
    this.options,
    this.fieldRule,
  });

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    return DynamicFormField(
      type: json['type'],
      label: json['label'],
      name: json['name'],
      fieldValueRenderingType: json['fieldValueRenderingType'],
      required: json['required'] ?? false,
      options:
          json['options'] != null ? List<String>.from(json['options']) : null,
      fieldRule: json['fieldRule'] != null
          ? FieldRule.fromJson(jsonDecode(json['fieldRule']))
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'type': type,
      'name': name,
      'options': options != null ? jsonEncode(options) : null,
      'fieldRule': fieldRule != null ? jsonEncode(fieldRule!.toJson()) : null,
      'fieldValueRenderingType': fieldValueRenderingType,
    };
  }
}
