import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/attribute_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/scanned_code_properties.dart';
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
  final dynamic defaultValue;
  final String? parent;

  // final IList<FieldTemplate> fields;
  final IMap<String, String> label;

  final IMap<String, dynamic>? properties;

  final IList<Rule> rules;
  final IList<FormOption> options;

  final String? constraint;
  final IMap<String, String>? constraintMessage;

  final AttributeType? attributeType;
  final ScannedCodeProperties? scannedCodeProperties;
  final IList<String> appearance;
  final bool gs1Enabled;

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
    this.parent,
    this.attributeType,
    this.gs1Enabled = false,
    // this.itemTitle,
    Iterable<Rule>? rules,
    Iterable<FormOption>? options,
    Iterable<String>? appearance,
    // Iterable<FieldTemplate>? fields,
    // List<FieldTemplate> fields = const [],
    // List<FormOption> options = const [],
    this.label = const IMap.empty(),
    this.properties,
    this.scannedCodeProperties,
    this.constraint,
    this.constraintMessage,
  })  : /*this.fields =
            IList.orNull(fields) ?? const IList<FieldTemplate>.empty(),*/
        this.options = IList.orNull(options) ?? const IList<FormOption>.empty(),
        this.rules = IList.orNull(rules) ?? const IList<Rule>.empty(),
        this.appearance =
            IList.orNull(appearance) ?? const IList<String>.empty();

  @override
  List<Object?> get props => [
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
        defaultValue,
        appearance
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
      gs1Enabled: json['gs1Enabled'] ?? false,
      listName: json['listName'],
      // fields: fields,
      // itemTitle: json['itemTitle'],
      choiceFilter: json['choiceFilter'],
      rules: rules,
      label: label.lock,
      properties: properties.lock,
      parent: json['section'],
      // parentPath: json['parentPath'],
      resourceType: resourceType,
      resourceMetadataSchema: json['resourceMetadataSchema'],
      // fieldValueRenderingType: json['fieldValueRenderingType'],
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
      'resourceMetadataSchema': resourceMetadataSchema,
      // 'fieldValueRenderingType': fieldValueRenderingType,
      // 'fields':
      //     jsonEncode(fields.unlockView.map((field) => field.toJson()).toList()),
      'rules':
          jsonEncode(rules.unlockView.map((rule) => rule.toJson()).toList()),
      'label': jsonEncode(label.unlockView),
      'constraint': constraint,
      'constraintMessage': constraintMessage != null
          ? jsonEncode(constraintMessage!.unlockView)
          : null,
      'properties': jsonEncode(properties?.unlockView),
      'parent': parent,
      'appearance': jsonEncode(appearance.unlockView),
      'scannedCodeProperties': scannedCodeProperties?.toJson() != null
          ? jsonEncode(scannedCodeProperties!.toJson())
          : null,
    };
  }
}
