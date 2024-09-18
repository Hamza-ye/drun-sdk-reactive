import 'dart:convert';

class FormOption {
  final String name;
  final String listName;
  final Map<String, String> label;
  final int order;
  final Map<String, dynamic>? properties;

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

    return FormOption(
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      name: json['name'],
      listName: json['listName'],
      properties: properties,
      order: json['order'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label),
      'name': name,
      'listName': listName,
      'properties': jsonEncode(properties),
      'order': order,
    };
  }

  Map<String, dynamic> toContext() {
    return {
      'label': label,
      'name': name,
      'listName': listName,
      ...?properties,
      'order': order,
    };
  }
}
