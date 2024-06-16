final Map<String, dynamic> dTempChvRegisterForm = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dynamicForms": [
    {
      "id": "1",
      "uid": "r1j223zL3VB",
      "name": "ChvSession Form",
      "code": "CHV_PATIENTS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "id": "1",
          "type": "date",
          "label": "Visit Date",
          "name": "visitDate",
          "required": true,
          "options": null,
          "fieldRule": {
            "required": true,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        },
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "required": true,
          "options": null,
          "fieldRule": {
            "required": true,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        },
        {
          "id": "3",
          "type": "text",
          "label": "Patient Age",
          "name": "patientAge",
          "required": true,
          "options": null,
          "fieldRule": {
            "required": true,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "required": true,
          "options": null,
          "fieldRule": {
            "required": true,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        },
        {
          "id": "5",
          "type": "selectOne",
          "name": "gender",
          "required": true,
          "label": "Gender",
          "options": ["Male", "Female"],
          "rules": {"required": true}
        },
        {
          "id": "6",
          "type": "yesNo",
          "label": "Pregnant",
          "name": "pregnant",
          "required": false,
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": "gender",
            "rule": "=",
            "dependentFieldValues": ["Female"]
          }
        },
        {
          "id": "7",
          "type": "selectOne",
          "label": "Test Result",
          "name": "testResult",
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"],
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        },
        {
          "id": "8",
          "type": "selectOne",
          "label": "Detection Type",
          "name": "detectionType",
          "options": ["REACTIVE", "ACTIVE"],
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": null,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        },
        {
          "id": "9",
          "type": "selectOne",
          "label": "Severity",
          "name": "severity",
          "options": ["SIMPLE", "SEVERE"],
          "fieldRule": {
            "dependentFieldId": "testResult",
            "rule": "=",
            "dependentFieldValues": ["PF", "PV", "MIX"]
          }
        },
        {
          "id": "10",
          "type": "selectOne",
          "label": "Treatment",
          "name": "treatment",
          "options": ["TREATED", "FIRSTDOSE", "REFERAL"],
          "fieldRule": {
            "dependentFieldId": "testResult",
            "rule": "=",
            "dependentFieldValues": ["PF", "PV", "MIX"]
          }
        },
        {
          "id": "11",
          "type": "text",
          "label": "Comment",
          "name": "comment",
          "options": null,
          "fieldRule": {
            "required": false,
            "minLength": null,
            "maxLength": 2000,
            "numeric": null,
            "email": null,
            "dependentFieldId": null,
            "dependentFieldValues": null
          }
        }
      ],
    }
  ]
};
