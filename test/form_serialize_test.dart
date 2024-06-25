import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/entities/dynamic_form.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/field_rule.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('DynamicForm serialization and deserialization', () {
    // Create a FieldRule instance
    final fieldRule1 = FieldRule(
      relevantFieldId: '123',
      rule: '=',
      relevantFieldValues: ['value1', 'value2'],
    );

    final fieldRule2 = FieldRule(
      relevantFieldId: '123',
      rule: '=',
      relevantFieldValues: ['value21', 'value22'],
    );

    // Create a DynamicFormField instance
    final dynamicFormField = DynamicFormField(
      type: 'text',
      label: 'Test Label',
      fieldValueRenderingType: 'textField',
      name: 'Test Field',
      required: true,
      options: ['Option 1', 'Option 2'],
      fieldRules: [fieldRule1, fieldRule2],
    );

    // Create a DynamicForm instance
    final dynamicForm = DynamicForm(
      id: '1',
      uid: 'uid1',
      name: 'Test Form',
      code: 'formCode',
      mainFields: [dynamicFormField],
      createdDate: '2024-06-23T18:25:43.511Z',
      lastModifiedDate: '2024-06-23T18:25:43.511Z',
      fields: [dynamicFormField],
      activity: 'activity1',
      dirty: true,
    );

    // Convert DynamicForm to JSON
    final json = dynamicForm.toJson();
    final jsonString = jsonEncode(json);

    // Convert JSON back to DynamicForm
    final decodedJson = jsonDecode(jsonString);
    final deserializedForm = DynamicForm.fromJson(decodedJson);

    // Verify the fields
    expect(deserializedForm.id, dynamicForm.id);
    expect(deserializedForm.uid, dynamicForm.uid);
    expect(deserializedForm.name, dynamicForm.name);
    expect(deserializedForm.code, dynamicForm.code);
    expect(deserializedForm.mainFields!.first!.label,
        dynamicForm.mainFields!.first!.label);
    expect(deserializedForm.mainFields!.first!.type,
        dynamicForm.mainFields!.first!.type);
    expect(deserializedForm.mainFields!.first!.name,
        dynamicForm.mainFields!.first!.name);
    expect(deserializedForm.mainFields!.first!.fieldValueRenderingType,
        dynamicForm.mainFields!.first!.fieldValueRenderingType);
    expect(deserializedForm.mainFields!.first!.required,
        dynamicForm.mainFields!.first!.required);
    expect(deserializedForm.mainFields!.first!.options,
        dynamicForm.mainFields!.first!.options);
    expect(
        deserializedForm.mainFields!.first!.fieldRules!.first!.relevantFieldId,
        dynamicForm.mainFields!.first!.fieldRules!.first!.relevantFieldId);
    expect(
        deserializedForm
            .mainFields!.first!.fieldRules!.first!.relevantFieldValues,
        dynamicForm.mainFields!.first!.fieldRules!.first!.relevantFieldValues);
    expect(deserializedForm.createdDate, dynamicForm.createdDate);
    expect(deserializedForm.lastModifiedDate, dynamicForm.lastModifiedDate);
    expect(deserializedForm.activity, dynamicForm.activity);
    expect(deserializedForm.dirty, dynamicForm.dirty);
    expect(deserializedForm.fields!.length, dynamicForm.fields!.length);
    expect(
        deserializedForm.fields!.first.label, dynamicForm.fields!.first.label);
  });
}
