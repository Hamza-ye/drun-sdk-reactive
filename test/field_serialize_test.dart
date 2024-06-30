import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/entities/dynamic_form.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_rule.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('DynamicFormField fromJson and toJson', () {
    final jsonString = '''
    {
      "id": "sdksldl",
      "type": "text",
      "label": "Patient Name",
      "name": "patientName",
      "required": true,
      "rules": "[{\\"id\\":\\"eF3gH4iJ5K6\\",\\"field\\":\\"sdksldl\\",\\"expression\\":\\"gender == 'Female' && patientAge >= 10\\",\\"action\\":\\"show\\",\\"message\\":\\"This field is hidden/invalid/requires attention because...\\"}]"
    }
    ''';

    final dynamicFormField = DynamicFormField.fromJson(jsonDecode(jsonString));

    expect(dynamicFormField.type, "text");
    expect(dynamicFormField.label, "Patient Name");
    expect(dynamicFormField.name, "patientName");
    expect(dynamicFormField.required, true);
    expect(dynamicFormField.rules?.length, 1);
    expect(dynamicFormField.rules?.first.id, "eF3gH4iJ5K6");
    expect(dynamicFormField.rules?.first.expression, "gender == 'Female' && patientAge >= 10");
    expect(dynamicFormField.rules?.first.action, "show");

    final serializedJson = dynamicFormField.toJson();
    expect(serializedJson['type'], "text");
    expect(serializedJson['label'], "Patient Name");
    expect(serializedJson['name'], "patientName");
    expect(serializedJson['required'], true);
    expect(serializedJson['rules'], isNotNull);
  });
}
