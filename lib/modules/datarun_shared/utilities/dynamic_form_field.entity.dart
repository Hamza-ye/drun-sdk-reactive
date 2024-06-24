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
    final dynamic fieldRule = json["fieldRule"] != null
        ? FieldRule.fromJson(json["fieldRule"].runtimeType == String
            ? jsonDecode(json["fieldRule"])
            : json["fieldRule"])
        : null;

    final options = json['options'] != null
        ? jsonDecode(json['options']).cast<String>()
        : null;

    return DynamicFormField(
      type: json['type'],
      label: json['label'],
      name: json['name'],
      fieldValueRenderingType: json['fieldValueRenderingType'],
      required: json['required'] ?? false,
      options: options,
      fieldRule: fieldRule,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = label;
    data['type'] = type;
    data['name'] = name;
    data['options'] = options != null ? jsonEncode(options) : null;
    data['fieldRule'] = fieldRule != null ? fieldRule!.toJson() : null;
    data['fieldValueRenderingType'] = fieldValueRenderingType;
    return data;
  }
}
