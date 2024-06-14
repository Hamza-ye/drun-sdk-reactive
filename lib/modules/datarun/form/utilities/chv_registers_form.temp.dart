final Map<String, dynamic> dTempChvRegisterForm = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "chvRegisters": [
    {
      "id": "1",
      "uid": "r1j333zL3VB",
      "name": "ChvSession Form",
      "code": "CHV_SESSION_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "id": "1",
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
          "id": "2",
          "type": "Text",
          "label": "Patient Name",
          "key": "patientName",
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
          "id": "3",
          "type": "Text",
          "label": "Patient Age",
          "key": "patientAge",
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
          "id": "4",
          "type": "Text",
          "label": "Patient Location",
          "key": "patientLocation",
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
          "id": "5",
          "type": "SelectOne",
          "name": "gender",
          "label": "Gender",
          "options": ["Male", "Female", "Other"],
          "rules": {"required": true}
        },
        {
          "id": "6",
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
          "id": "7",
          "type": "SelectOne",
          "label": "Test Result",
          "key": "testResult",
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"],
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
          "id": "8",
          "type": "SelectOne",
          "label": "Detection Type",
          "key": "detectionType",
          "options": ["REACTIVE", "ACTIVE"],
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
          "id": "9",
          "type": "SelectOne",
          "label": "Severity",
          "key": "severity",
          "options": ["SIMPLE", "SEVERE"],
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
          "id": "10",
          "type": "SelectOne",
          "label": "Treatment",
          "key": "treatment",
          "options": ["TREATED", "FIRSTDOSE", "REFERAL"],
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
          "id": "11",
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
        }
      ],
    }
  ]
};
