import 'dart:convert';

class FormOption {
  final Map<String, String> label;
  final String name;
  final String listName;
  final String? description;

  FormOption(
      {required this.label,
      required this.listName,
      this.description,
      required this.name});

  factory FormOption.fromJson(Map<String, dynamic> json) {
    return FormOption(
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      name: json['name'],
      listName: json['listName'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label),
      'name': name,
      'listName': listName,
      'description': description,
    };
  }
}
