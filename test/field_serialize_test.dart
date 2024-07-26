import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('DynamicFormField fromJson and toJson', () {
    final jsonString = '''
    {
      "type": "text",
      "label": {"en": "Patient Name", "ar": "اسم المريض"},
      "name": "patientName",
      "mandatory": true,
      "options": [
        {"label": {"en": "Option 1", "ar": "الخيار 1"}, "name": "option1"},
        {"label": {"en": "Option 2", "ar": "الخيار 2"}, "name": "option2"}
      ],
      "rules": [
        {
          "id": "eF3gH4iJ5K6",
          "field": "gender",
          "expression": "gender == 'Female' && patientAge >= 10",
          "action": "show",
          "message": {"en": "This field is hidden/invalid/requires attention because..."}
        }
      ],
      "fieldValueRenderingType": "textField"
    }
    ''';

    final dynamicFormField = DynamicFormField.fromJson(jsonDecode(jsonString));

    expect(dynamicFormField.type, "text");
    expect(dynamicFormField.label, {"en": "Patient Name", "ar": "اسم المريض"});
    expect(dynamicFormField.name, "patientName");
    expect(dynamicFormField.mandatory, true);
    expect(dynamicFormField.options?.length, 2);
    expect(dynamicFormField.options?.first.name, "option1");
    expect(dynamicFormField.options?.first.label, {"en": "Option 1", "ar": "الخيار 1"});
    expect(dynamicFormField.rules?.length, 1);
    expect(dynamicFormField.rules?.first.id, "eF3gH4iJ5K6");
    expect(dynamicFormField.rules?.first.expression, "gender == 'Female' && patientAge >= 10");
    expect(dynamicFormField.rules?.first.action, "show");
    expect(dynamicFormField.rules?.first.message, {"en": "This field is hidden/invalid/requires attention because..."});
    expect(dynamicFormField.fieldValueRenderingType, "textField");

    final serializedJson = dynamicFormField.toJson();
    expect(serializedJson['type'], "text");
    expect(serializedJson['label'], jsonEncode({"en": "Patient Name", "ar": "اسم المريض"}));
    expect(serializedJson['name'], "patientName");
    expect(serializedJson['mandatory'], true);
    expect(serializedJson['options'], isNotNull);
    expect(serializedJson['rules'], isNotNull);
    expect(serializedJson['fieldValueRenderingType'], "textField");
  });
}
