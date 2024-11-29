import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/attribute_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/template.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/metadata_resource_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

mixin ElementAttributesMixin {
  ValueType? get type;

  bool get mandatory;
}

class FieldTemplate extends Template
    with ElementAttributesMixin, EquatableMixin {
  final String? path;

  final String? name;
  final int order;

  final ValueType? type;
  final String? listName;
  final bool mandatory;
  final bool readOnly;
  final bool mainField;
  final MetadataResourceType? resourceType;
  final String? resourceMetadataSchema;

  final String? choiceFilter;
  final String? calculation;
  final dynamic defaultValue;
  final String? parent;

  // final IList<FieldTemplate> fields;
  final IMap<String, String> label;

  final IMap<String, dynamic>? properties;

  final IList<Rule> rules;
  final IList<FormOption> options;

  final AttributeType? attributeType;

  FieldTemplate({
    this.path,
    this.mandatory = false,
    this.mainField = false,
    this.readOnly = false,
    this.order = 0,
    this.listName,
    this.type,
    this.name,
    // this.fieldValueRenderingType,
    this.resourceType,
    this.resourceMetadataSchema,
    this.choiceFilter,
    this.defaultValue,
    this.calculation,
    this.parent,
    this.attributeType,
    // this.itemTitle,
    Iterable<Rule>? rules,
    Iterable<FormOption>? options,
    // Iterable<FieldTemplate>? fields,
    // List<FieldTemplate> fields = const [],
    // List<FormOption> options = const [],
    this.label = const IMap.empty(),
    this.properties,
  })
      : /*this.fields =
            IList.orNull(fields) ?? const IList<FieldTemplate>.empty(),*/
        this.options = IList.orNull(options) ?? const IList<FormOption>.empty(),
        this.rules = IList.orNull(rules) ?? const IList<Rule>.empty();

  @override
  List<Object?> get props =>
      [
        // type,
        // name,
        // order,
        // label,
        // rules,
        // properties,
        parent,
        readOnly,
        listName,
        resourceType,
        resourceMetadataSchema,
        choiceFilter,
        calculation,
        defaultValue,
        // itemTitle,
      ];

  factory FieldTemplate.fromJson(Map<String, dynamic> json) {
    final valueType = ValueType.getValueType(json['type']);

    final resourceType = json['resourceType'] != null
        ? MetadataResourceType.getType(json['resourceType'])
        : null;

    final rules = json['rules'] != null
        ? (parseDynamicJson(json['rules']) as List)
        .map<Rule>((ruleField) =>
        Rule.fromJson({...ruleField, 'field': json['name']}))
        .toList()
        : <Rule>[];

    // final fields = json['fields'] != null
    //     ? (parseDynamicJson(json['fields']) as List)
    //         .map<FieldTemplate>((field) => FieldTemplate.fromJson({
    //               ...field,
    //               // "path": json['path'],
    //               "optionMap": json['optionMap'],
    //               "parent": valueType.isRepeatSection
    //                   ? '${json['path']}.{key}'
    //                   : json['path'],
    //             }))
    //         .toList()
    //     : <FieldTemplate>[];

    final optionMap = json['optionMap'] != null
        ? Map<String, List<FormOption>>.from(json['optionMap'] is String
        ? jsonDecode(json['optionMap'])
        : json['optionMap'])
        : <String, List<FormOption>>{};

    final listName = json['listName'];

    final options = optionMap[listName] ?? [];

    final label = json['label'] != null
        ? Map<String, String>.from(
        json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String>{};

    final properties = json['properties'] != null ? Map<String, dynamic>.from(
        json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties']) : <String, dynamic>{};

    return FieldTemplate(
        type: valueType,
        attributeType: AttributeType.getAttributeType(json['attributeType']),
        name: json['name'],
        options: options,
        path: json['path'],
        order: json['order'] ?? 0,
        mandatory: json['mandatory'] ?? false,
        mainField: json['mainField'] ?? false,
        readOnly: json['readOnly'] ?? false,
        listName: json['listName'],
        // fields: fields,
        // itemTitle: json['itemTitle'],
        choiceFilter: json['choiceFilter'],
        rules: rules,
        label: label.lock,
        properties: properties?.lock,
        parent: json['section'],
        // parentPath: json['parentPath'],
        resourceType: resourceType,
        resourceMetadataSchema: json['resourceMetadataSchema'],
        // fieldValueRenderingType: json['fieldValueRenderingType'],
        // defaultValue: json['defaultValue'] != null
        //     ? json['defaultValue'] is String
        //         ? json['defaultValue']
        //         : json['defaultValue'] as String
        //     : null,
        calculation: json['calculation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type?.name,
      'resourceType': resourceType?.name,
      'order': order,
      'path': path,
      'name': name,
      'options': jsonEncode(
          options.unlockView.map((option) => option.toJson()).toList()),
      'mandatory': mandatory,
      'readOnly': readOnly,
      'mainField': mainField,
      'listName': listName,
      // 'itemTitle': itemTitle,
      'choiceFilter': choiceFilter,
      'defaultValue': defaultValue,
      'calculation': calculation,
      'resourceMetadataSchema': resourceMetadataSchema,
      // 'fieldValueRenderingType': fieldValueRenderingType,
      // 'fields':
      //     jsonEncode(fields.unlockView.map((field) => field.toJson()).toList()),
      'rules':
      jsonEncode(rules.unlockView.map((rule) => rule.toJson()).toList()),
      'label': jsonEncode(label.unlockView),
      'properties': jsonEncode(properties?.unlockView),
      'parent': parent,
    };
  }
}
