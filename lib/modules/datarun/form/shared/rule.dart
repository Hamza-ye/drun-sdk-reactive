import 'dart:convert';

class Rule {
  final String id;
  final String field;
  final String? expression;
  final String? action;
  final Map<String, String>? message;

  Rule(
      {required this.id,
      required this.field,
      this.expression,
      this.action,
      this.message});

  factory Rule.fromJson(Map<String, dynamic> json) {
    return Rule(
      id: json['id'],
      field: json['field'],
      expression: json['expression'],
      action: json['action'],
      message: json['message'] != null
          ? Map<String, String>.from(json['message'] is String
              ? jsonDecode(json['message'])
              : json['message'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'field': field,
      'expression': expression,
      'action': action,
      'message': message != null ? jsonEncode(message) : null,
    };
  }
}
