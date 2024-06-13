import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/utilities/field_type.dart';

import 'field_rule.dart';

class DynamicFormField {
  FieldType type;

  String label;

  String name;

  List<String>? options;

  FieldRule? fieldRule;

  DynamicFormField({required this.label,
    required this.type,
    required this.name,
    this.options,
    this.fieldRule});

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    final FieldRule? fieldRule = json["fieldRule"] != null
        ? FieldRule.fromJson(json["fieldRule"].runtimeType == String
        ? jsonDecode(json["fieldRule"])
        : json["fieldRule"])
        : null;

    final options = json['options'] != null
        ? List<String>.from(json['options'] )
        : null;
    return DynamicFormField(
      type: FieldTypeUtil.getFieldType(json['type']),
      label: json['label'],
      name: json['name'],
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
    return data;
  }
}
