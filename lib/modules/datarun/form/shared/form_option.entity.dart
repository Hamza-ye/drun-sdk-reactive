import 'dart:convert';

class FormOption {
  // final String uid;
  final String name;
  final String listName;
  final Map<String, String> label;
  final int sortOrder;

  FormOption(
      {required this.label,
      required this.listName,
      required this.sortOrder,
      required this.name,
      // required this.uid
      });

  factory FormOption.fromJson(Map<String, dynamic> json) {
    return FormOption(
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      name: json['name'],
      listName: json['listName'],
      // uid: json['uid'],
      sortOrder: json['sortOrder'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': jsonEncode(label),
      // 'uid': uid,
      'name': name,
      'listName': listName,
      'sortOrder': sortOrder,
    };
  }
}
