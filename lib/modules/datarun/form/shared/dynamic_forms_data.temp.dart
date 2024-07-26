final Map<String, dynamic> dTempChvRegisterForm = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dataForms": [
    {
      "id": "1",
      "uid": "r1j223zL3VB",
      "name": "Case Reporting",
      "code": "CHV_PATIENTS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "mainFields": [
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "mandatory": true
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "mandatory": true
        }
      ],
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
          "mandatory": true
        },
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "mandatory": true,
        },
        {
          "id": "3",
          "type": "number",
          "label": "Patient Age",
          "name": "patientAge",
          "mandatory": true
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "mandatory": true
        },
        {
          "id": "5",
          "type": "selectOne",
          "name": "gender",
          "mandatory": true,
          "label": "Gender",
          "options": ["Male", "FEMALE"]
        },
        {
          "id": "6",
          "type": "boolean",
          "label": "Pregnant",
          "name": "pregnant",
          "mandatory": true,
          "fieldRules": [
            {
              "relevantFieldId": "gender",
              "rule": "=",
              "relevantFieldValues": ["FEMALE"]
            },
            {
              "relevantFieldId": "patientAge",
              "rule": ">=",
              "relevantFieldValues": ["10"]
            }
          ]
        },
        {
          "id": "7",
          "type": "selectOne",
          "label": "Test Result",
          "name": "testResult",
          "mandatory": true,
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"]
        },
        {
          "id": "8",
          "type": "selectOne",
          "label": "Detection Type",
          "name": "detectionType",
          "mandatory": true,
          "options": ["REACTIVE", "ACTIVE"]
        },
        {
          "id": "9",
          "type": "selectOne",
          "label": "Severity",
          "name": "severity",
          "mandatory": true,
          "options": ["SIMPLE", "SEVERE"],
          "fieldRules": [
            {
              "relevantFieldId": "testResult",
              "rule": "=",
              "relevantFieldValues": ["PF", "PV", "MIX"]
            }
          ]
        },
        {
          "id": "10",
          "type": "selectOne",
          "label": "Treatment",
          "name": "treatment",
          "mandatory": true,
          "options": ["TREATED", "FIRSTDOSE", "REFERAL"],
          "fieldRules": [
            {
              "relevantFieldId": "testResult",
              "rule": "=",
              "relevantFieldValues": ["PF", "PV", "MIX"]
            }
          ]
        },
        {
          "id": "11",
          "type": "longText",
          "label": "Comment",
          "name": "comment"
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
      "mainFields": [{
        "type": "date",
        "label": "Session Date",
        "name": "sessionDate"
      },],
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "type": "date",
          "label": "Session Date",
          "name": "sessionDate",
          "mandatory": true
        },
        {
          "id": "3",
          "type": "selectOne",
          "label": "Session Subject",
          "name": "subject",
          "mandatory": true,
          "options": ["ITNs", "BreadingSite", "TRANSMISSION_PREVENTION"]
        },
        {
          "type": "number",
          "name": "sessions",
          "label": "Sessions",
          "mandatory": true
        },
        {
          "type": "number",
          "name": "people",
          "label": "People",
          "mandatory": true
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
      "mainFields": [
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "mandatory": true
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "mandatory": true
        }
      ],
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
          "mandatory": true
        },
        {
          "id": "2",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "mandatory": true,
        },
        {
          "id": "3",
          "type": "number",
          "label": "Patient Age",
          "name": "patientAge",
          "mandatory": true
        },
        {
          "id": "4",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "mandatory": true
        },
        {
          "id": "5",
          "type": "selectOne",
          "name": "gender",
          "mandatory": true,
          "label": "Gender",
          "options": ["Male", "FEMALE"]
        },
        {
          "id": "6",
          "type": "yesNo",
          "label": "Pregnant",
          "name": "pregnant",
          "mandatory": true,
          "fieldRules": [
            {
              "relevantFieldId": "gender",
              "rule": "=",
              "relevantFieldValues": ["FEMALE"]
            },
            {
              "relevantFieldId": "patientAge",
              "rule": ">=",
              "relevantFieldValues": ["10"]
            }
          ]
        },
        {
          "id": "7",
          "type": "selectOne",
          "label": "Test Result",
          "name": "testResult",
          "mandatory": true,
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"]
        },
        {
          "id": "8",
          "type": "selectOne",
          "label": "Detection Type",
          "name": "detectionType",
          "mandatory": true,
          "options": ["REACTIVE", "ACTIVE"]
        },
        {
          "id": "9",
          "type": "selectOne",
          "label": "Severity",
          "name": "severity",
          "mandatory": true,
          "options": ["SIMPLE", "SEVERE"],
          "fieldRules": [
            {
              "relevantFieldId": "testResult",
              "rule": "=",
              "relevantFieldValues": ["PF", "PV", "MIX"]
            }
          ]
        },
        {
          "id": "10",
          "type": "selectOne",
          "label": "Treatment",
          "name": "treatment",
          "mandatory": true,
          "options": ["TREATED", "FIRSTDOSE", "REFERAL"],
          "fieldRules": [
            {
              "relevantFieldId": "testResult",
              "rule": "=",
              "relevantFieldValues": ["PF", "PV", "MIX"]
            }
          ]
        },
        {
          "id": "11",
          "type": "text",
          "label": "Comment",
          "name": "comment"
        }
      ],
    }
  ]
};
