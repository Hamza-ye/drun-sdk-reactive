import 'dart:convert';

class FieldRule {
  final String? relevantFieldId;
  final String? rule;
  final List<String>? relevantFieldValues;

  FieldRule({this.relevantFieldId, this.rule, this.relevantFieldValues});

  factory FieldRule.fromJson(Map<String, dynamic> json) {
    final relevantFieldValues = json['relevantFieldValues'] != null
        ? json['relevantFieldValues'].runtimeType == String
            ? jsonDecode(json['relevantFieldValues']).cast<String>()
            : json['relevantFieldValues'].cast<String>()
        : null;

    return FieldRule(
      relevantFieldId: json['relevantFieldId'],
      rule: json['rule'],
      relevantFieldValues: relevantFieldValues,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'relevantFieldId': relevantFieldId,
      'rule': rule,
      'relevantFieldValues': relevantFieldValues != null
          ? jsonEncode(relevantFieldValues)
          : null,
    };
  }
}
