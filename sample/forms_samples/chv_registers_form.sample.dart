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
      "name": "ChvSession Form",
      "code": "CHV_SESSION_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 2,
        "uid": "rIjAsHzL3VB",
      },
      "fields": [
        {
          "type": "date",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "yesNo",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "selectOne",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "selectOne",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "selectOne",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "selectOne",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "text",
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
            "dependentFieldValues": null
          }
        },
        {
          "type": "text",
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
            "dependentFieldValues": null
          }
        }
      ],
    }
  ]
};
