import 'dart:convert';

class FieldRule {
  final String? dependentFieldId;
  final List<String>? dependentFieldValues;

  FieldRule({this.dependentFieldId, this.dependentFieldValues});

  factory FieldRule.fromJson(Map<String, dynamic> json) {
    return FieldRule(
      dependentFieldId: json['dependentFieldId'],
      dependentFieldValues: json['dependentFieldValues'] != null
          ? List<String>.from(json['dependentFieldValues'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dependentFieldId': dependentFieldId,
      'dependentFieldValues': dependentFieldValues != null
          ? jsonEncode(dependentFieldValues)
          : null,
    };
  }
}
