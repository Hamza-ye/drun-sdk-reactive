import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/attribute_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/reference_field_info.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:equatable/equatable.dart';

mixin ElementAttributesMixin {
  ValueType get type;

  bool get mandatory;
}

class FieldTemplate with ElementAttributesMixin, EquatableMixin {
  final String? path;

  final String? name;
  final int order;

  final ValueType type;
  final String? listName;
  final bool mandatory;
  final bool mainField;
  final String? fieldValueRenderingType;
  final ReferenceInfo? referenceInfo;

  // final String? choiceFilter;
  final String? choiceFilter;
  final String? calculation;
  final dynamic defaultValue;
  final String? section;

  final List<FieldTemplate> fields = [];
  final Map<String, String> label = {};
  final List<Rule> rules = [];
  final List<FormOption> options = [];
  final String? itemTitle;

  final AttributeType? attributeType;

  FieldTemplate({
    this.path,
    required this.mandatory,
    this.mainField = false,
    this.order = 0,
    this.listName,
    required this.type,
    this.name,
    this.fieldValueRenderingType,
    this.referenceInfo,
    this.choiceFilter,
    this.defaultValue,
    this.calculation,
    this.section,
    this.attributeType,
    this.itemTitle,
    List<FieldTemplate> fields = const [],
    List<Rule> rules = const [],
    List<FormOption> options = const [],
    Map<String, String> label = const {},
  }) {
    this.fields.addAll(fields);
    this.rules.addAll(rules);
    this.label.addAll(label);
    this.options.addAll(options);
  }

  @override
  List<Object?> get props => [
        name,
        section,
        type,
        order,
        rules,
        label,
        listName,
        referenceInfo,
        choiceFilter,
        calculation,
        defaultValue,
        itemTitle,
      ];

  factory FieldTemplate.fromJson(Map<String, dynamic> json) {
    final valueType = ValueType.getValueType(json['type']);

    final rules = json['rules'] != null
        ? (parseDynamicJson(json['rules']) as List)
            .map<Rule>((ruleField) =>
                Rule.fromJson({...ruleField, 'field': json['name']}))
            .toList()
        : <Rule>[];

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map<FieldTemplate>((field) => FieldTemplate.fromJson({
                  ...field,
                  // "section": json['name'],
                  // "path": json['path'],
                  "parent": valueType.isRepeatSection
                      ? '${json['path']}.{key}'
                      : json['path'],
                }))
            .toList()
        : <FieldTemplate>[];

    final options = json['options'] != null
        ? (parseDynamicJson(json['options']) as List)
            .map<FormOption>((option) => FormOption.fromJson({...option}))
            .toList()
        : <FormOption>[];

    return FieldTemplate(
        type: valueType,
        attributeType: AttributeType.getAttributeType(json['attributeType']),
        name: json['name'],
        options: options,
        path: json['path'],
        order: json['order'] ?? 0,
        mandatory: json['mandatory'] ?? false,
        mainField: json['mainField'] ?? false,
        listName: json['listName'],
        fields: fields,
        itemTitle: json['itemTitle'],
        choiceFilter: json['choiceFilter'],
        rules: rules,
        label: Map<String, String>.from(json['label'] is String
            ? jsonDecode(json['label'])
            : json['label']),
        referenceInfo: json['referenceInfo'] != null
            ? ReferenceInfo.fromJson(json['referenceInfo'] is String
                ? jsonDecode(json['referenceInfo'])
                : json['referenceInfo'])
            : null,
        fieldValueRenderingType: json['fieldValueRenderingType'],
        defaultValue: json['defaultValue'] != null
            ? json['defaultValue'] is String
                ? json['defaultValue']
                : json['defaultValue'] as String
            : null,
        calculation: json['calculation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type.name,
      'order': order,
      'path': path,
      'name': name,
      'options': jsonEncode(options.map((option) => option.toJson()).toList()),
      'mandatory': mandatory,
      'mainField': mainField,
      'listName': listName,
      'itemTitle': itemTitle,
      'choiceFilter': choiceFilter,
      'defaultValue': defaultValue,
      'calculation': calculation,
      'referenceField':
          referenceInfo != null ? jsonEncode(referenceInfo!.toJson()) : null,
      'fieldValueRenderingType': fieldValueRenderingType,
      'fields': jsonEncode(fields.map((field) => field.toJson()).toList()),
      'rules': jsonEncode(rules.map((rule) => rule.toJson()).toList()),
      'label': jsonEncode(label),
      'section': section,
    };
  }

//
// Iterable<FieldTemplate> depthFirstTraversal() sync* {
//   yield this; // Start with the root node
//   for (final child in children ) {
//     yield* child.depthFirstTraversal();
//   }
// }
}
