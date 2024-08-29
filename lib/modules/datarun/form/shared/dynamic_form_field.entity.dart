import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/reference_field_info.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';

class DynamicFormField {
  final String type;
  final Map<String, String> label;
  final String name;
  final int order;
  final String? listName;
  final bool mandatory;
  final bool mainField;
  final List<Rule>? rules;
  final String? fieldValueRenderingType;
  final ReferenceInfo? referenceInfo;
  final String? choiceFilter;
  final List<DynamicFormField>? fields;
  final String? calculation;
  final String? defaultValue;

  /// uid of section field including this as a child
  final String? section;

  DynamicFormField(
      {required this.label,
      required this.mandatory,
      required this.mainField,
      this.order = 0,
      this.listName,
      required this.type,
      required this.name,
      this.rules,
      this.fieldValueRenderingType,
      this.referenceInfo,
      this.choiceFilter,
      this.fields,
      this.defaultValue,
      this.calculation,
      this.section});

  factory DynamicFormField.fromJson(Map<String, dynamic> json) {
    final rules = json['rules'] != null
        ? (parseDynamicList(json['rules']) as List)
            .map((ruleField) => Rule.fromJson(ruleField))
            .toList()
        : null;

    final fieldList = json['fields'] != null
        ? parseDynamicList(json['fields']) as List
        : null;
    final fields = (fieldList ?? []).isNotEmpty
        ? fieldList!
            .map((field) => DynamicFormField.fromJson({
                  ...field,
                  "section": json['name'],
                }))
            .toList()
        : null;

    return DynamicFormField(
        type: json['type'],
        label: Map<String, String>.from(json['label'] is String
            ? jsonDecode(json['label'])
            : json['label']),
        name: json['name'],
        order: json['order'] ?? 0,
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
        fields: fields,
        defaultValue: json['defaultValue'],
        calculation: json['calculation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'label': jsonEncode(label),
      'order': order,
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
      'defaultValue': defaultValue,
      'calculation': calculation,
      'fields': fields != null && fields?.isNotEmpty == true
          ? jsonEncode(fields!.map((field) => field.toJson()).toList())
          : null,
      'referenceField':
          referenceInfo != null ? jsonEncode(referenceInfo!.toJson()) : null,
      'fieldValueRenderingType': fieldValueRenderingType,
    };
  }
}
