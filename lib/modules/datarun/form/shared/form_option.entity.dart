import 'dart:convert';

class FormOption {
  // final String id;
  // final String field;
  final Map<String, String> label;
  final String name;
  final String? description;

  FormOption(
      {
      // this.id,
      // this.field,
      required this.label,
        this.description,
      required this.name});

  factory FormOption.fromJson(Map<String, dynamic> json) {
    return FormOption(
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      name: json['name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label),
      'name': name,
      'description': description,
    };
  }
}
