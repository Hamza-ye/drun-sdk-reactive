import 'dart:convert';

import 'package:d2_remote/modules/datarun_shared/utilities/field_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/field_value_rendering_type.dart';

import 'field_rule.dart';

class DynamicFormField {
  final FieldType type;

  final String label;

  final FieldValueRenderingType fieldValueRenderingType;

  final String name;

  final List<String>? options;

  final bool required;

  final FieldRule? fieldRule;

  DynamicFormField(
      {required this.label,
      required this.required,
      required this.type,
      required this.name,
      required this.fieldValueRenderingType,
      this.options,
      this.fieldRule});

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    final FieldRule? fieldRule = json["fieldRule"] != null
        ? FieldRule.fromJson(json["fieldRule"].runtimeType == String
            ? jsonDecode(json["fieldRule"])
            : json["fieldRule"])
        : null;

    final options =
        json['options'] != null ? List<String>.from(json['options']) : null;
    return DynamicFormField(
      type: FieldTypeUtil.getFieldType(json['type']),
      label: json['label'],
      name: json['name'],
      fieldValueRenderingType: FieldValueRenderingUtil.getFieldValueRendering(
          json['fieldValueRenderingType']),
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
    data['options'] = options;
    data['fieldRule'] = fieldRule;
    data['fieldValueRenderingType'] = fieldValueRenderingType;
    return data;
  }
}
