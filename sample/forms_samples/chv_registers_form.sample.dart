final Map<String, dynamic> dSampleChvRegisterForm = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "chvRegisters": [
    {
      "id": "1",
      "uid": "r1j333zL3VB",
      "name": "ChvRegister Form",
      "code": "CHV_REGISTER_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 2,
        "uid": "rIjAsHzL3VB",
      },
      "fields": [
        {
          "type": "Date",
          "label": "Visit Date",
          "key": "visitDate",
          "options": null,
          "fieldRule": {
            "required": true,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "Number",
          "label": "Age",
          "key": "age",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": true,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "YesNo",
          "label": "Pregnant",
          "key": "pregnant",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "SelectOne",
          "label": "Test Result",
          "key": "testResult",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "SelectOne",
          "label": "Detection Type",
          "key": "detectionType",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "SelectOne",
          "label": "Severity",
          "key": "severity",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "SelectOne",
          "label": "Treatment",
          "key": "treatment",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "Text",
          "label": "Comment",
          "key": "comment",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": 2000,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        },
        {
          "type": "Text",
          "label": "Patient",
          "key": "patient",
          "options": null,
          "fieldRule": {
            "required": true,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValue": null
          }
        }
      ],
    }
  ]
};
