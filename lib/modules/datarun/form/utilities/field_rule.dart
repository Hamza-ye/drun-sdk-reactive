class FieldRule {
  final bool required;
  final int? minLength;
  final int? maxLength;
  final bool? email;
  final bool? numeric;
  final String? dependentFieldId;
  final String? dependentFieldValue;

  FieldRule({
    this.required = false,
    this.minLength,
    this.maxLength,
    this.numeric,
    this.dependentFieldId,
    this.dependentFieldValue,
    this.email = false,
  });

  factory FieldRule.fromJson(Map<String, dynamic> jsonData) {
    return FieldRule(
      required: jsonData['reference'],
      minLength: jsonData['minLength'],
      maxLength: jsonData['maxLength'],
      numeric: jsonData['numeric'],
      email: jsonData['email'],
      dependentFieldId: jsonData['dependentFieldId'],
      dependentFieldValue: jsonData['dependentFieldValue'],
    );
  }
}
