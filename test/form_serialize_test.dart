import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:d2_remote/modules/datarun/form/entities/dynamic_form.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';

void main() {
  test('DynamicForm serialization and deserialization', () {
    // Create instances of FormOption
    final option1 = FormOption(
      label: {'en': 'Option 1', 'ar': 'الخيار 1'},
      name: 'option1',
    );

    final option2 = FormOption(
      label: {'en': 'Option 2', 'ar': 'الخيار 2'},
      name: 'option2',
    );

    // Create a Rule instance
    final rule1 = Rule(
      id: 'rule1',
      field: 'field1',
      expression: "gender == 'Female' && patientAge >= 10",
      action: 'show',
      message: {'en': 'This field is hidden/invalid/requires attention because...'},
    );

    // Create a DynamicFormField instance
    final dynamicFormField = DynamicFormField(
      type: 'select',
      label: {'en': 'Test Label', 'ar': 'تسمية الاختبار'},
      name: 'testField',
      required: true,
      options: [option1, option2],
      rules: [rule1],
      fieldValueRenderingType: 'dropdown',
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
      label: {'en': 'Form Label', 'ar': 'تسمية النموذج'},
      defaultLocal: 'en',
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

    final deserializedField = deserializedForm.mainFields!.first;
    final originalField = dynamicForm.mainFields!.first;
    expect(deserializedField.label, originalField.label);
    expect(deserializedField.type, originalField.type);
    expect(deserializedField.name, originalField.name);
    expect(deserializedField.required, originalField.required);
    expect(deserializedField.fieldValueRenderingType, originalField.fieldValueRenderingType);

    final deserializedOptions = deserializedField.options;
    final originalOptions = originalField.options;
    expect(deserializedOptions?.length, originalOptions?.length);
    expect(deserializedOptions?.first.label, originalOptions?.first.label);
    expect(deserializedOptions?.first.name, originalOptions?.first.name);

    final deserializedRules = deserializedField.rules;
    final originalRules = originalField.rules;
    expect(deserializedRules?.length, originalRules?.length);
    expect(deserializedRules?.first.id, originalRules?.first.id);
    expect(deserializedRules?.first.field, originalRules?.first.field);
    expect(deserializedRules?.first.expression, originalRules?.first.expression);
    expect(deserializedRules?.first.action, originalRules?.first.action);
    expect(deserializedRules?.first.message, originalRules?.first.message);

    expect(deserializedForm.createdDate, dynamicForm.createdDate);
    expect(deserializedForm.lastModifiedDate, dynamicForm.lastModifiedDate);
    expect(deserializedForm.activity, dynamicForm.activity);
    expect(deserializedForm.dirty, dynamicForm.dirty);
    expect(deserializedForm.label, dynamicForm.label);
    expect(deserializedForm.defaultLocal, dynamicForm.defaultLocal);

    final deserializedFields = deserializedForm.fields;
    final originalFields = dynamicForm.fields;
    expect(deserializedFields?.length, originalFields?.length);
    expect(deserializedFields?.first.label, originalFields?.first.label);
  });
}
