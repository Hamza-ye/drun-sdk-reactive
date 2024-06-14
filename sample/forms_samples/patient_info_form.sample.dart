final Map<String, dynamic> dSamplePatientInfoForm = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dynamicForms": [
    {
      "id": "1",
      "uid": "r1j555zL3VB",
      "name": "Chv Patient Form",
      "code": "CHV_PATIENT_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "id": "1",
          "type": "Text",
          "name": "name",
          "label": "Name",
          "rules": {"required": true, "minLength": 2, "maxLength": 50}
        },
        {
          "id": "2",
          "type": "Number",
          "name": "age",
          "label": "Age",
          "rules": {"required": true, "minValue": 0, "maxValue": 120}
        },
        {
          "id": "3",
          "type": "SelectOne",
          "name": "gender",
          "label": "Gender",
          "options": ["Male", "Female", "Other"],
          "rules": {"required": true}
        }
      ]
    }
  ]
};
