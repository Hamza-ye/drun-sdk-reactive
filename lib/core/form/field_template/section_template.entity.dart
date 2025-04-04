import 'dart:convert';

import 'package:d_sdk/core/form/field_template/container_template.dart';
import 'package:d_sdk/core/form/field_template/field_template.dart';
import 'package:d_sdk/core/form/rule/rule.dart';
import 'package:d_sdk/core/utilities/parsing_helpers.dart';
import 'package:d_sdk/database/converters/template_list.converter.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class SectionTemplate extends ContainerTemplate {
  final String? id;
  final String? code;
  final String? path;
  final String? description;

  final String? name;
  final int order;

  final ValueType type;
  final String? fieldValueRenderingType;
  final String? parent;

  final IList<Template> fields;
  final IMap<String, dynamic> label;

  final IMap<String, dynamic>? properties;

  final IList<Rule> rules;

  final String? constraint;
  final IMap<String, String>? constraintMessage;
  final String? itemTitle;
  final bool readOnly;
  final bool isRepeat;
  final int? maxRepeats;
  final int? minRepeats;

  final IList<Template> treeFields;

  SectionTemplate({
    this.id,
    this.code,
    this.path,
    this.description,
    this.order = 0,
    this.type = ValueType.Section,
    this.name,
    this.fieldValueRenderingType,
    this.parent,
    this.itemTitle,
    this.readOnly = false,
    this.isRepeat = false,
    this.maxRepeats,
    this.minRepeats,
    this.constraint,
    this.constraintMessage,
    Iterable<Rule>? rules,
    Iterable<Template>? fields,
    Iterable<Template>? treeFields,
    this.label = const IMap.empty(),
    this.properties,
  })  : this.fields = IList.orNull(fields) ?? const IList<Template>.empty(),
        this.treeFields = IList.orNull(fields) ?? const IList<Template>.empty(),
        this.rules = IList.orNull(rules) ?? const IList<Rule>.empty();

  @override
  List<Object?> get props => [parent, itemTitle, readOnly];

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
            .map<Template>((field) => TemplateListConverter.fromJsonFactory({
                  ...field,
                  "optionMap": json['optionMap'],
                  "parent": valueType.isRepeatSection
                      ? '${json['path']}.{key}'
                      : json['path'],
                }))
            .toList()
        : <Template>[];
    final treeFields = <Template>[];

    final label = json['label'] != null
        ? Map<String, String?>.from(
            json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String?>{};

    final properties = json['properties'] != null
        ? Map<String, dynamic>.from(json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties'])
        : <String, dynamic>{};

    final constraintMessage = json['constraintMessage'] != null
        ? Map<String, String>.from(json['constraintMessage'] is String
            ? jsonDecode(json['constraintMessage'])
            : json['constraintMessage'])
        : <String, String>{};

    return SectionTemplate(
        type: valueType,
        constraint: json['constraint'],
        id: json['id'],
        code: json['code'],
        constraintMessage: constraintMessage.lock,
        name: json['name'],
        description: json['description'],
        path: json['path'],
        maxRepeats: json['maxRepeats'],
        minRepeats: json['minRepeats'],
        readOnly: json['readOnly'] ?? false,
        isRepeat: json['isRepeat'] ?? valueType.isRepeatSection ?? false,
        itemTitle: json['itemTitle'],
        order: json['order'] ?? 0,
        fields: fields,
        treeFields: treeFields,
        rules: rules,
        label: label.lock,
        properties: properties.lock,
        parent: json['section'],
        fieldValueRenderingType: json['fieldValueRenderingType']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'type': type.name,
      'order': order,
      'path': path,
      'name': name,
      'description': description,
      'readOnly': readOnly,
      'isRepeat': isRepeat,
      'maxRepeats': maxRepeats,
      'minRepeats': minRepeats,
      'fieldValueRenderingType': fieldValueRenderingType,
      'fields': jsonEncode(fields.unlockView
          .map((field) => TemplateListConverter.toJsonFactory(field))
          .toList()),
      'treeFields': jsonEncode(treeFields.unlockView
          .map((field) => TemplateListConverter.toJsonFactory(field))
          .toList()),
      'rules':
          jsonEncode(rules.unlockView.map((rule) => rule.toJson()).toList()),
      'label': jsonEncode(label.unlockView),
      'properties': jsonEncode(properties?.unlockView),
      'constraint': constraint,
      'constraintMessage': constraintMessage != null
          ? jsonEncode(constraintMessage!.unlockView)
          : null,
      'parent': parent,
    };
  }

  SectionTemplate copyWith({
    String? id,
    String? description,
    String? path,
    int? order,
    String? name,
    String? code,
    bool? mainField,
    Iterable<Rule>? rules,
    Iterable<Template>? fields,
    Iterable<Template>? treeFields,
    ValueType? type,
    IMap<String, dynamic>? label,
    IMap<String, dynamic>? properties,
    bool? readOnly,
    String? constraint,
    IMap<String, String>? constraintMessage,
    String? fieldValueRenderingType,
    String? parent,
    String? itemTitle,
    bool? isRepeat,
    int? maxRepeats,
    int? minRepeats,
  }) {
    return SectionTemplate(
      id: id ?? this.id,
      code: code ?? this.code,
      path: path ?? this.path,
      description: description ?? this.description,
      name: name ?? this.name,
      order: order ?? this.order,
      type: type ?? this.type,
      fieldValueRenderingType:
          fieldValueRenderingType ?? this.fieldValueRenderingType,
      parent: parent ?? this.parent,
      fields: fields ?? this.fields,
      treeFields: treeFields ?? this.fields,
      label: label ?? this.label,
      properties: properties ?? this.properties,
      rules: rules ?? this.rules,
      constraint: constraint ?? this.constraint,
      constraintMessage: constraintMessage ?? this.constraintMessage,
      itemTitle: itemTitle ?? this.itemTitle,
      readOnly: readOnly ?? this.readOnly,
      isRepeat: isRepeat ?? this.isRepeat,
      maxRepeats: maxRepeats ?? this.maxRepeats,
      minRepeats: minRepeats ?? this.minRepeats,
    );
  }
}
