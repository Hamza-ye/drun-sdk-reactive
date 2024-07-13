import 'dart:convert';

class FormOption {
  // final String id;
  // final String field;
  final Map<String, String> label;
  final String name;

  FormOption({
    // this.id,
    // this.field,
    required this.label,
    required this.name,
  });

  factory FormOption.fromJson(Map<String, dynamic> json) {
    // // Parse the label field based on its type
    // dynamic labelValue = json['label'];
    // Map<String, String> parsedLabel;
    // if (labelValue is String) {
    //   // Handle the case where label is a JSON string
    //   parsedLabel = jsonDecode(labelValue);
    // } else if (labelValue is Map<String, String>) {
    //   // Handle the case where label is already a Map<String, String>
    //   parsedLabel = labelValue;
    // } else {
    //   throw FormatException("Unexpected format for 'label' field");
    // }

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
