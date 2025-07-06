import 'dart:convert';

import 'package:d_sdk/core/form/attribute_type.dart';
import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/core/form/rule/rule.dart';
import 'package:d_sdk/core/form/value_type_rendering_type.dart';
import 'package:d_sdk/core/utilities/parsing_helpers.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class FieldTemplate extends Template {
  final String id;
  final String? description;
  final String? path;
  final String? parent;

  final String? code;
  final String? name;
  final int order;

  final ValueType type;

  final String? listName;
  final String? optionSet;
  final bool mandatory;
  final bool readOnly;
  final bool mainField;
  final String? choiceFilter;
  final dynamic defaultValue;

  final IMap<String, dynamic> label;

  final IMap<String, dynamic>? properties;

  final IList<Rule> rules;
  final IList<FormOption> options;

  final String? constraint;
  final IMap<String, String>? constraintMessage;
  final String? calculation;

  final AttributeType? attributeType;
  final ScannedCodeProperties? scannedCodeProperties;
  final IList<String> appearance;
  final bool gs1Enabled;

  /// references to other entities
  final MetadataResourceType? resourceType;
  final String? resourceMetadataSchema;
  final IList<String> displayAttributes;

  @override
  bool get repeatable => false;

  final ValueTypeRenderingType valueTypeRendering;

  FieldTemplate({
    required this.id,
    this.code,
    this.description,
    this.path,
    this.parent,
    this.mandatory = false,
    this.mainField = false,
    this.readOnly = false,
    this.order = 0,
    this.listName,
    this.optionSet,
    this.name,
    required this.type,
    this.valueTypeRendering = ValueTypeRenderingType.DEFAULT,
    this.resourceType,
    this.resourceMetadataSchema,
    this.choiceFilter,
    this.calculation,
    this.defaultValue,
    this.attributeType,
    this.gs1Enabled = false,
    Iterable<Rule>? rules,
    Iterable<FormOption>? options,
    Iterable<String>? appearance,
    Iterable<String>? displayAttributes,
    this.label = const IMap.empty(),
    this.properties,
    this.scannedCodeProperties,
    this.constraint,
    this.constraintMessage,
  })  : this.options = IList.orNull(options) ?? const IList<FormOption>.empty(),
        this.rules = IList.orNull(rules) ?? const IList<Rule>.empty(),
        this.appearance =
            IList.orNull(appearance) ?? const IList<String>.empty(),
        this.displayAttributes =
            IList.orNull(displayAttributes) ?? const IList<String>.empty();

  @override
  List<Object?> get props => [
        optionSet,
        parent,
        readOnly,
        listName,
        calculation,
        resourceType,
        resourceMetadataSchema,
        choiceFilter,
        defaultValue,
        appearance
      ];

  factory FieldTemplate.fromJson(Map<String, dynamic> json) {
    final valueType = ValueType.getValueType(json['type']);
    final valueTypeRendering =
        ValueTypeRenderingType.valueOf(json['valueTypeRendering']);

    final resourceType = json['resourceType'] != null
        ? MetadataResourceType.getType(json['resourceType'])
        : null;

    final rules = json['rules'] != null
        ? (parseDynamicJson(json['rules']) as List)
            .map<Rule>((ruleField) =>
                Rule.fromJson({...ruleField, 'field': json['name']}))
            .toList()
        : <Rule>[];

    final optionMap = json['optionMap'] != null
        ? Map<String, List<FormOption>>.from(json['optionMap'] is String
            ? jsonDecode(json['optionMap'])
            : json['optionMap'])
        : <String, List<FormOption>>{};

    final listName = json['listName'];

    final options = optionMap[listName] ?? [];

    final label = json['label'] != null
        ? Map<String, String?>.from(
            json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String?>{};

    final constraintMessage = json['constraintMessage'] != null
        ? Map<String, String>.from(json['constraintMessage'] is String
            ? jsonDecode(json['constraintMessage'])
            : json['constraintMessage'])
        : <String, String>{};

    final properties = json['properties'] != null
        ? Map<String, dynamic>.from(json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties'])
        : <String, dynamic>{};

    final appearance = json['appearance'] != null
        ? json['appearance'].runtimeType == String
            ? jsonDecode(json['appearance']).cast<String>()
            : json['appearance'].cast<String>()
        : null;

    final displayAttributes = json['displayAttributes'] != null
        ? json['displayAttributes'].runtimeType == String
            ? jsonDecode(json['displayAttributes']).cast<String>()
            : json['displayAttributes'].cast<String>()
        : null;

    if (valueType == null) {
      throw ArgumentError('Invalid value type: $valueType');
    }

    return FieldTemplate(
      type: valueType,
      attributeType: AttributeType.getAttributeType(json['attributeType']),
      id: json['id'],
      name: json['name'],
      code: json['code'],
      description: json['description'],
      options: options,
      displayAttributes: displayAttributes,
      path: json['path'],
      order: json['order'] ?? 0,
      mandatory: json['mandatory'] ?? false,
      mainField: json['mainField'] ?? false,
      readOnly: json['readOnly'] ?? false,
      gs1Enabled: json['gs1Enabled'] ?? false,
      listName: json['listName'],
      optionSet: json['optionSet'],
      choiceFilter: json['choiceFilter'],
      calculation: json['calculation'],
      rules: rules,
      label: label.lock,
      properties: properties.lock,
      parent: json['parent'],
      resourceType: resourceType,
      resourceMetadataSchema: json['resourceMetadataSchema'],
      valueTypeRendering: valueTypeRendering,
      defaultValue: json['defaultValue'] != null
          ? json['defaultValue'] is String
              ? json['defaultValue']
              : json['defaultValue'] as String
          : null,
      constraint: json['constraint'],
      constraintMessage: constraintMessage.lock,
      scannedCodeProperties: json['scannedCodeProperties'],
      appearance: appearance,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'type': type.name,
      'resourceType': resourceType?.name,
      'order': order,
      'path': path,
      'name': name,
      'description': description,
      'options': options.unlockView.map((option) => option.toJson()).toList(),
      'mandatory': mandatory,
      'readOnly': readOnly,
      'mainField': mainField,
      'listName': listName,
      'optionSet': optionSet,
      'choiceFilter': choiceFilter,
      'calculation': calculation,
      'defaultValue': defaultValue,
      'valueTypeRendering': valueTypeRendering.name,
      'resourceMetadataSchema': resourceMetadataSchema,
      'rules': rules.unlockView.map((rule) => rule.toJson()).toList(),
      'label': label.unlockView,
      'constraint': constraint,
      'constraintMessage': constraintMessage!.unlockView,
      'properties': properties?.unlockView,
      'parent': parent,
      'appearance': appearance.unlockView,
      'scannedCodeProperties': scannedCodeProperties?.toJson(),
    };
  }

  @override
  String get displayName =>
      getItemLocalString(label.unlockView, defaultString: name);
}
