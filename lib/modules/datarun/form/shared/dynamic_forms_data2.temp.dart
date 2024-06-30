final Map<String, dynamic> dTempChvRegisterForm2 = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dynamicForms": [
    {
      "id": "aB1cD2eF3G4",
      "uid": "aB1cD2eF3G4",
      "name": "Case Reporting",
      "code": "CHV_PATIENTS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "id": "vW3xY4zA5B6",
          "type": "date",
          "label": "Visit Date",
          "name": "visitDate",
          "required": true
        },
        {
          "id": "cD7eF8gH9I0",
          "type": "text",
          "label": "Patient Name",
          "name": "patientName",
          "required": true,
        },
        {
          "id": "jK1lM2nO3P4",
          "type": "number",
          "label": "Patient Age",
          "name": "patientAge",
          "required": true
        },
        {
          "id": "qR5sT6uV7W8",
          "type": "text",
          "label": "Patient Location",
          "name": "patientLocation",
          "required": true
        },
        {
          "id": "xY9zA0bC1D2",
          "type": "selectOne",
          "name": "gender",
          "required": true,
          "label": "Gender",
          "options": ["Male", "Female"]
        },
        {
          "id": "eF3gH4iJ5K6",
          "type": "boolean",
          "label": "Pregnant",
          "name": "pregnant",
          "required": true,
          "rules": [
            {
              "id": "eF5gH6iJ5K6",
              "field": "eF3gH4iJ5K6",
              "expression": "gender == 'Female' && patientAge >= 10",
              "action": "show",
              "message":
                  "This field is hidden/invalid/requires attention because..."
            }
          ]
        },
        {
          "id": "lM7nO8pQ9R0",
          "type": "selectOne",
          "label": "Test Result",
          "name": "testResult",
          "required": true,
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"]
        },
        {
          "id": "zA5bC6dE7F8",
          "type": "selectOne",
          "label": "Severity",
          "name": "severity",
          "required": true,
          "options": ["SIMPLE", "SEVERE"],
          "rules": [
            {
              "id": "eF3gH8iJ5K9",
              "field": "zA5bC6dE7F8",
              "expression": 'testResult == "PF" || testResult == "PV" || testResult == "MIX"',
              "action": "show"
            }
          ]
        },
        {
          "id": "gH9iJ0kL1M2",
          "type": "selectOne",
          "label": "Treatment",
          "name": "treatment",
          "required": true,
          "options": ["TREATED", "FIRSTDOSE", "REFERAL"],
          "rules": [
            {
              "id": "gH10J1kL1M2",
              "field": "gH9iJ0kL1M2",
              "expression": 'testResult == "PF" || testResult == "PV" || testResult == "MIX"',
              "action": "warning",
            }
          ]
        },
        {
          "id": "nO3pQ4rS5T6",
          "type": "longText",
          "label": "Comment",
          "name": "comment"
        }
      ]
    },
    {
      "id": "2",
      "uid": "r1j333zL3VB",
      "name": "Sessions Reporting",
      "code": "CHV_SESSIONS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "mainFields": [
        {"type": "date", "label": "Session Date", "name": "sessionDate"},
      ],
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "type": "date",
          "label": "Session Date",
          "name": "sessionDate",
          "required": true
        },
        {
          "id": "3",
          "type": "selectOne",
          "label": "Session Subject",
          "name": "subject",
          "required": true,
          "options": ["ITNs", "BreadingSite", "TRANSMISSION_PREVENTION"]
        },
        {
          "type": "number",
          "name": "sessions",
          "label": "Sessions",
          "required": true
        },
        {
          "type": "number",
          "name": "people",
          "label": "People",
          "required": true
        }
      ],
    },
  ]
};
