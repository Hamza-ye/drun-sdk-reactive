final Map<String, dynamic> dSampleAllForms = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dynamicForms": [
    {
      "id": "1",
      "uid": "r1j223zL3VB",
      "name": "Case Reporting",
      "code": "CHV_PATIENTS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "mainField": {
        "id": "2",
        "type": "text",
        "label": "Patient Name",
        "name": "patientName",
        "required": true
      },
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
          "fieldRule": {
            "required": true,
          }
        },
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "required": true,
        },
        {
          "id": "3",
          "type": "number",
          "label": "Patient Age",
          "name": "patientAge",
          "required": true
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "required": true
        },
        {
          "id": "5",
          "type": "selectOne",
          "name": "gender",
          "required": true,
          "label": "Gender",
          "options": ["Male", "Female"],
          "fieldRule": {"required": true}
        },
        {
          "id": "6",
          "type": "yesNo",
          "label": "Pregnant",
          "name": "pregnant",
          "required": false,
          "fieldRule": {
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
            "required": false
          }
        },
        {
          "id": "8",
          "type": "selectOne",
          "label": "Detection Type",
          "name": "detectionType",
          "options": ["REACTIVE", "ACTIVE"]
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
          "fieldRule": {
            "maxLength": 2000
          }
        }
      ],
    },
    {
      "id": "2",
      "uid": "r1j333zL3VB",
      "name": "Sessions Reporting",
      "code": "CHV_SESSIONS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "mainField": {
        "type": "date",
        "label": "Session Date",
        "name": "sessionDate"
      },
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "type": "date",
          "label": "Session Date",
          "name": "sessionDate",
          "required": true,
          "fieldRule": {"required": true}
        },
        {
          "id": "3",
          "type": "selectOne",
          "label": "Session Subject",
          "name": "subject",
          "required": true,
          "options": ["ITNs", "BreadingSite", "TRANSMISSION_PREVENTION"],
          "fieldRule": {"required": true}
        },
        {
          "type": "number",
          "name": "sessions",
          "label": "Sessions",
          "fieldRule": {
            "required": false,
            "numeric": true,
          }
        },
        {
          "type": "number",
          "name": "people",
          "label": "People",
          "fieldRule": {
            "required": false,
            "numeric": true,
          }
        }
      ],
    },
    {
      "id": "3",
      "uid": "r1j366zL3VB",
      "name": "ITN Reporting",
      "code": "ITN_DISTRIBUTION_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "mainField": {
        "id": "1",
        "type": "date",
        "label": "Visit Date",
        "name": "visitDate",
        "required": true
      },
      "activity": {
        "id": 16,
        "uid": "oAne601mA8n",
      },
      "fields": [
        {
          "id": "1",
          "type": "date",
          "label": "Visit Date",
          "name": "visitDate",
          "required": true
        },
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "required": true
        },
        {
          "id": "3",
          "type": "text",
          "label": "Patient Age",
          "name": "patientAge",
          "required": true
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "required": true
        },
        {
          "id": "5",
          "type": "selectOne",
          "name": "gender",
          "required": true,
          "label": "Gender",
          "options": ["Male", "Female"],
          "fieldRule": {"required": true}
        },
        {
          "id": "6",
          "type": "yesNo",
          "label": "Pregnant",
          "name": "pregnant",
          "required": false,
          "fieldRule": {
            "required": false,
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
            "required": false
          }
        },
        {
          "id": "8",
          "type": "selectOne",
          "label": "Detection Type",
          "name": "detectionType",
          "options": ["REACTIVE", "ACTIVE"]
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
          "fieldRule": {
            "maxLength": 2000
          }
        }
      ],
    }
  ]
};
