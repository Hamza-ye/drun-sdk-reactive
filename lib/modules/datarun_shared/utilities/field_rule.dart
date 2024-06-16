class FieldRule {
  final String? dependentFieldId;
  final List<String>? dependentFieldValues;

  FieldRule({this.dependentFieldId, this.dependentFieldValues});

  factory FieldRule.fromJson(Map<String, dynamic> jsonData) {
    final dependentFieldValues = jsonData['dependentFieldValues'] != null
        ? List<String>.from(jsonData['dependentFieldValues'])
        : null;

    return FieldRule(
      dependentFieldId: jsonData['dependentFieldId'],
      dependentFieldValues: dependentFieldValues,
    );
  }
}
