import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/entities/dynamic_form.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/field_rule.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('DynamicForm serialization and deserialization', () {
    // Create a FieldRule instance
    final fieldRule = FieldRule(
      dependentFieldId: '123',
      dependentFieldValues: ['value1', 'value2'],
    );

    // Create a DynamicFormField instance
    final dynamicFormField = DynamicFormField(
      type: 'text',
      label: 'Test Label',
      fieldValueRenderingType: 'textField',
      name: 'Test Field',
      required: true,
      options: ['Option 1', 'Option 2'],
      fieldRule: fieldRule,
    );

    // Create a DynamicForm instance
    final dynamicForm = DynamicForm(
      id: '1',
      uid: 'uid1',
      name: 'Test Form',
      code: 'formCode',
      mainField: dynamicFormField,
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
    expect(deserializedForm.mainField!.label, dynamicForm.mainField!.label);
    expect(deserializedForm.mainField!.type, dynamicForm.mainField!.type);
    expect(deserializedForm.mainField!.name, dynamicForm.mainField!.name);
    expect(deserializedForm.mainField!.fieldValueRenderingType,
        dynamicForm.mainField!.fieldValueRenderingType);
    expect(
        deserializedForm.mainField!.required, dynamicForm.mainField!.required);
    expect(deserializedForm.mainField!.options, dynamicForm.mainField!.options);
    expect(deserializedForm.mainField!.fieldRule!.dependentFieldId,
        dynamicForm.mainField!.fieldRule!.dependentFieldId);
    expect(deserializedForm.mainField!.fieldRule!.dependentFieldValues,
        dynamicForm.mainField!.fieldRule!.dependentFieldValues);
    expect(deserializedForm.createdDate, dynamicForm.createdDate);
    expect(deserializedForm.lastModifiedDate, dynamicForm.lastModifiedDate);
    expect(deserializedForm.activity, dynamicForm.activity);
    expect(deserializedForm.dirty, dynamicForm.dirty);
    expect(deserializedForm.fields!.length, dynamicForm.fields!.length);
    expect(
        deserializedForm.fields!.first.label, dynamicForm.fields!.first.label);
  });
}
