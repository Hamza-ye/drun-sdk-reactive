import 'dart:convert';

class FormOption {
  // final String id;
  // final String field;
  final Map<String, String> label;
  final String name;

  FormOption(
      {
      // this.id,
      // this.field,
      required this.label,
      required this.name});

  factory FormOption.fromJson(Map<String, dynamic> json) {
    return FormOption(
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label),
      'name': name,
    };
  }
}
