import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/attribute_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/reference_field_info.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';

mixin ElementAttributesMixin {
  ValueType get type;

  AttributeType? get attributeType => null;

  bool get mandatory;
}

class FieldTemplate with ElementAttributesMixin {
  final ValueType type;
  final String name;
  final int order;
  final String? listName;
  final bool mandatory;
  final bool mainField;
  final String? fieldValueRenderingType;
  final ReferenceInfo? referenceInfo;
  final String? choiceFilter;
  final String? calculation;
  final dynamic defaultValue;

  /// name of section field including this as a child
  final String? section;

  // final String path;

  final List<FieldTemplate> fields = [];
  final Map<String, String> label = {};
  final List<Rule> rules = [];
  final Set<FormOption> options = Set();

  final List<String> dependencies;

  final AttributeType? attributeType;

  FieldTemplate({
    required this.mandatory,
    required this.mainField,
    this.order = 0,
    this.listName,
    required this.type,
    required this.name,
    this.fieldValueRenderingType,
    this.referenceInfo,
    this.choiceFilter,
    this.defaultValue,
    this.calculation,
    this.section,
    this.attributeType,
    // required this.path,
    List<FieldTemplate> fields = const [],
    List<Rule> rules = const [],
    List<FormOption> options = const [],
    List<String> dependencies = const [],
    Map<String, String> label = const {},
  }) : this.dependencies = []..addAll(dependencies) {
    this.fields.addAll(fields);
    this.rules.addAll(rules);
    this.label.addAll(label);
    this.options.addAll(options);
  }

  factory FieldTemplate.fromJson(Map<String, dynamic> json) {
    final rules = json['rules'] != null
        ? (parseDynamicJson(json['rules']) as List)
            .map<Rule>((ruleField) =>
                Rule.fromJson({...ruleField, 'field': json['name']}))
            .toList()
        : <Rule>[];

    // final choiceFilter = json['choiceFilter'];
    // final List<String> dependencies = rules
    //     .map((rule) => rule.expression)
    //     .expand((expression) => parseDependencies(expression))
    //     .toList()
    //   ..addAll(parseDependencies(choiceFilter))
    //   ..toSet().toList();

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map<FieldTemplate>((field) => FieldTemplate.fromJson({
                  ...field,
                  "section": json['name'],
                }))
            .toList()
        : <FieldTemplate>[];

    return FieldTemplate(
        // type: json['type'],
        type: ValueType.getValueType(json['type']),
        attributeType: AttributeType.getAttributeType(json['attributeType']),
        name: json['name'],
        order: json['order'] ?? 0,
        mandatory: json['mandatory'] ?? false,
        mainField: json['mainField'] ?? false,
        listName: json['listName'],
        fields: fields,
        dependencies: parseDependencies(json['choiceFilter']),
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
        // path: json['path'],
        calculation: json['calculation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type.name,
      'order': order,
      'name': name,
      'mandatory': mandatory,
      'mainField': mainField,
      'listName': listName,
      'choiceFilter': choiceFilter,
      'defaultValue': defaultValue,
      'calculation': calculation,
      'referenceField':
          referenceInfo != null ? jsonEncode(referenceInfo!.toJson()) : null,
      'fieldValueRenderingType': fieldValueRenderingType,
      'fields': jsonEncode(fields.map((field) => field.toJson()).toList()),
      'rules': jsonEncode(rules.map((rule) => rule.toJson()).toList()),
      'dependencies': jsonEncode(dependencies),
      'label': jsonEncode(label),
      'section': section,
      // 'path': path
    };
  }
}

List<String> parseDependencies(String? expression) {
  if (expression != null) {
    // final fieldPattern = RegExp(r'#\{(\w+)\}');
    final fieldPattern = RegExp(r'#\{(.*?)\}');
    // final fieldPattern = RegExp(r'#\{([\w\.]+)\}');

    return fieldPattern
        .allMatches(expression)
        .map((match) => match.group(1)!)
        .toSet()
        .toList();
  }
  return [];
}

String? removePlaceholders(String? expression) {
  if (expression != null) {
    // final fieldPattern = RegExp(r'#\{(\w+)\}');
    final fieldPattern = RegExp(r'#\{(.*?)\}');
    // final fieldPattern = RegExp(r'#\{([\w\.]+)\}');
    return expression.replaceAllMapped(
        fieldPattern, (match) => match.group(1)!);
  }

  return null;
}
