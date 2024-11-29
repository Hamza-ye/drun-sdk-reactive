import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class FormOption with EquatableMixin {
  final String name;
  final String listName;
  final IMap<String, String> label;
  final int order;
  final IMap<String, dynamic>? properties;

  FormOption({
    required this.label,
    required this.listName,
    required this.order,
    required this.name,
    this.properties,
  });

  factory FormOption.fromJson(Map<String, dynamic> json) {
    final properties = json['properties'] != null
        ? Map<String, dynamic>.from(json['properties'] is String
            ? jsonDecode(json['properties'])
            : json['properties'])
        : null;

    final label = Map<String, String>.from(
        json['label'] is String ? jsonDecode(json['label']) : json['label']);
    return FormOption(
      label: label.lock,
      name: json['name'],
      listName: json['listName'],
      properties: properties?.lock,
      order: json['order'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label.unlockView),
      'name': name,
      'listName': listName,
      'properties': jsonEncode(properties?.unlockView),
      'order': order,
    };
  }

  Map<String, dynamic> toContext() {
    return {
      'label': label,
      'name': name,
      'listName': listName,
      ...?properties?.unlockView,
      'order': order,
    };
  }

  @override
  List<Object?> get props => [label, listName, order, name, properties];
}
