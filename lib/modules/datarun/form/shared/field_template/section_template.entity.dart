import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/field_template/json_factory.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/field_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/template.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class SectionTemplate extends Template {
  final String? path;

  final String? name;
  final int order;

  final ValueType type;
  final String? fieldValueRenderingType;
  final String? parent;

  final IList<Template> fields;
  final IMap<String, String> label;

  final IMap<String, dynamic>? properties;

  final IList<Rule> rules;
  final String? itemTitle;
  final bool readOnly;

  SectionTemplate({
    this.path,
    this.order = 0,
    this.type = ValueType.Section,
    this.name,
    this.fieldValueRenderingType,
    this.parent,
    this.itemTitle,
    this.readOnly = false,
    Iterable<Rule>? rules,
    Iterable<Template>? fields,
    this.label = const IMap.empty(),
    this.properties,
  })  : this.fields =
            IList.orNull(fields) ?? const IList<FieldTemplate>.empty(),
        this.rules = IList.orNull(rules) ?? const IList<Rule>.empty();

  @override
  List<Object?> get props => [
        parent,
        itemTitle,
      ];

  factory SectionTemplate.fromJson(Map<String, dynamic> json) {
    final valueType = ValueType.getValueType(json['type']);

    final rules = json['rules'] != null
        ? (parseDynamicJson(json['rules']) as List)
            .map<Rule>((ruleField) =>
                Rule.fromJson({...ruleField, 'field': json['name']}))
            .toList()
        : <Rule>[];

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map<Template>((field) => TemplateJsonFactory.fromJsonFactory({
                  ...field,
                  "optionMap": json['optionMap'],
                  "parent": valueType.isRepeatSection
                      ? '${json['path']}.{key}'
                      : json['path'],
                }))
            .toList()
        : <Template>[];

    final label = json['label'] != null
        ? Map<String, String>.from(
            json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String>{};

    final properties = json['properties'] != null ? Map<String, dynamic>.from(
        json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties']) : <String, dynamic>{};


    return SectionTemplate(
        type: valueType,
        name: json['name'],
        path: json['path'],
        readOnly: json['readOnly'] ?? false,
        itemTitle: json['itemTitle'],
        order: json['order'] ?? 0,
        fields: fields,
        rules: rules,
        label: label.lock,
        properties: properties?.lock,
        parent: json['section'],
        fieldValueRenderingType: json['fieldValueRenderingType']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type.name,
      'order': order,
      'path': path,
      'name': name,
      'fieldValueRenderingType': fieldValueRenderingType,
      'fields': jsonEncode(fields.unlockView
          .map((field) => TemplateJsonFactory.toJsonFactory(field))
          .toList()),
      'rules':
          jsonEncode(rules.unlockView.map((rule) => rule.toJson()).toList()),
      'label': jsonEncode(label.unlockView),
      'properties': jsonEncode(properties?.unlockView),
      'parent': parent,
    };
  }
}
