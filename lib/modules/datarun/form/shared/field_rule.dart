import 'dart:convert';

class FieldRule {
  final String? relevantFieldId;
  final String? rule;
  final List<String>? relevantFieldValues;

  FieldRule({this.relevantFieldId, this.rule, this.relevantFieldValues});

  // bool evaluate(Map<String, dynamic> formData) {
  //   if(relevantFieldId ==  null) {
  //     throw Exception('RelevantFieldId is Null');
  //   }
  //
  //   final relevantFieldValue = formData[relevantFieldId];
  //   switch (rule) {
  //     case '=':
  //       return relevantFieldValues?.contains(relevantFieldValue) ?? false;
  //     case '!=':
  //       return !relevantFieldValues?.contains(relevantFieldValue);
  //     case '>':
  //     // Handle numerical or date comparisons as needed
  //     // ...
  //     case '>=':
  //     // ...
  //     case '<':
  //     // ...
  //     case '<=':
  //     // ...
  //
  //     // Textual comparison (optional)
  //     case 'contains': // Textual comparison (optional)
  //       return relevantFieldValue?.toString().toLowerCase().contains(
  //         relevantFieldValues[0].toLowerCase(),
  //       ) ?? false;
  //     case 'in':
  //
  //     case 'empty':
  //       //
  //     case 'notEmpty':
  //     default:
  //       throw Exception('Unsupported rule operator: $rule');
  //   }
  // }

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
