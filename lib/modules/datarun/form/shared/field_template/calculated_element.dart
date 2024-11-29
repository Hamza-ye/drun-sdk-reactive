import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/field_template/template.dart';
import 'package:d2_remote/modules/datarun/form/shared/metadata_resource_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class CalculatedTemplate extends Template {
  final String name;
  final ValueType type;
  final int order;
  final String path;
  final String? calculation;
  final dynamic defaultValue;
  final MetadataResourceType? resourceType;
  final String? resourceMetadataSchema;
  final IList<Rule> rules;
  final IMap<String, String> label;
  final IMap<String, dynamic>? properties;
  final String? parent;
  bool get readOnly => true;

  CalculatedTemplate({
    required this.path,
    required this.name,
    this.order = 0,
    this.resourceType,
    this.resourceMetadataSchema,
    this.defaultValue,
    this.type = ValueType.Calculated,
    this.calculation,
    this.parent,
    Iterable<Rule>? rules,
    this.label = const IMap.empty(),
    this.properties,
  }) : this.rules = IList.orNull(rules) ?? const IList<Rule>.empty();

  @override
  List<Object?> get props => super.props + [calculation];

  factory CalculatedTemplate.fromJson(Map<String, dynamic> json) {
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

    final label = json['label'] != null
        ? Map<String, String>.from(
            json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String>{};

    final properties = json['properties'] != null ? Map<String, dynamic>.from(
        json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties']) : <String, dynamic>{};

    ;
    return CalculatedTemplate(
        type: valueType,
        order: json['order'] ?? 0,
        name: json['name'],
        path: json['path'],
        parent: json['parent'],
        rules: rules,
        label: label.lock,
        properties: properties?.lock,
        resourceType: resourceType,
        resourceMetadataSchema: json['resourceMetadataSchema'],
        defaultValue: json['defaultValue'] != null
            ? json['defaultValue'] is String
                ? json['defaultValue']
                : json['defaultValue'] as String
            : null,
        calculation: json['calculation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'name': name,
      'type': type.name,
      'order': order,
      'defaultValue': defaultValue,
      'calculation': calculation,
      'resourceType': resourceType?.name,
      'resourceMetadataSchema': resourceMetadataSchema,
      'rules':
          jsonEncode(rules.unlockView.map((rule) => rule.toJson()).toList()),
      'label': jsonEncode(label.unlock),
      'properties': jsonEncode(properties?.unlock),
    };
  }
}
