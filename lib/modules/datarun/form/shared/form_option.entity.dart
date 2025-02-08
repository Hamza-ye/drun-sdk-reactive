import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class FormOption with EquatableMixin {
  final String name;
  final String listName;
  final IMap<String, String> label;
  final int order;
  final String? filterExpression;
  final IMap<String, dynamic>? properties;

  FormOption({
    required this.label,
    required this.listName,
    required this.order,
    required this.name,
    this.filterExpression,
    this.properties,
  });

  factory FormOption.fromJson(Map<String, dynamic> json) {
    final properties = json['properties'] != null
        ? Map<String, dynamic>.from(json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties'])
        : <String, dynamic>{};

    final label = json['label'] != null
        ? Map<String, String>.from(
            json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String>{"ar": json['name']};
    return FormOption(
      label: label.lock,
      name: json['name'],
      listName: json['listName'],
      filterExpression: json['filterExpression'],
      properties: properties.lock,
      order: json['order'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label.unlockView),
      'name': name,
      'listName': listName,
      'filterExpression': filterExpression,
      'properties': jsonEncode(properties?.unlockView),
      'order': order,
    };
  }

  List<String> get filterExpressionDependencies {
    final fieldPattern = RegExp(r'#\{(.*?)\}');

    return filterExpression != null
        ? fieldPattern
            .allMatches(filterExpression!)
            .map((match) => match.group(1)!)
            .toSet()
            .toList()
        : [];
  }

  String? get evalFilterExpression {
    return filterExpression?.replaceAll("#{", "").replaceAll("}", "");
  }

  Map<String, dynamic> toContext() {
    return {
      'label': label,
      'name': name,
      'listName': listName,
      ...?properties?.unlockView,
      'filterExpression': evalFilterExpression,
      'filterExpressionDependencies': filterExpressionDependencies,
      'order': order,
    };
  }

  @override
  List<Object?> get props =>
      [label, listName, order, name, filterExpression, properties];
}
