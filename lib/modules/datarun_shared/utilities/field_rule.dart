import 'dart:convert';

class FieldRule {
  final String? dependentFieldId;
  final List<String>? dependentFieldValues;

  FieldRule({this.dependentFieldId, this.dependentFieldValues});

  factory FieldRule.fromJson(Map<String, dynamic> json) {
    // final dependentFieldValues2 = json['dependentFieldValues'] != null
    //     ? jsonDecode(json['dependentFieldValues']).cast<String>()
    //     : null;

    final dependentFieldValues = json['dependentFieldValues'] != null
        ? json['dependentFieldValues'].runtimeType == String
        ? jsonDecode(json['dependentFieldValues']).cast<String>()
        : json['dependentFieldValues'].cast<String>()
        : null;

    return FieldRule(
      dependentFieldId: json['dependentFieldId'],
      dependentFieldValues: dependentFieldValues,
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
