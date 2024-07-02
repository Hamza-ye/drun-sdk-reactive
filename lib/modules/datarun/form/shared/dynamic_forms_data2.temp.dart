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
          "name": "visitDate",
          "label": "Visit Date",
          "required": true
        },
        {
          "id": "cD7eF8gH9I0",
          "type": "text",
          "name": "name",
          "label": "Patient Name",
          "required": true,
        },
        {
          "id": "jK1lM2nO3P4",
          "type": "number",
          "name": "age",
          "label": "Patient Age",
          "required": true
        },
        {
          "id": "qR5sT6uV7W8",
          "type": "text",
          "name": "locationName",
          "label": "Patient Location",
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
          "name": "pregnant",
          "label": "Pregnant",
          "required": true,
          "rules": [
            {
              "id": "eF5gH6iJ5K6",
              "field": "eF3gH4iJ5K6",
              "expression": "gender == 'Female' && age > 10",
              "action": "show",
              "message":
                  "This field is hidden/invalid/requires attention because..."
            }
          ]
        },
        {
          "id": "lM7nO8pQ9R0",
          "type": "selectOne",
          "name": "testResult",
          "label": "Test Result",
          "required": true,
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"]
        },
        {
          "id": "zA5bC6dE7F8",
          "type": "selectOne",
          "name": "severity",
          "label": "Severity",
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
          "name": "treatment",
          "label": "Treatment",
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
      ],
      "mainFields": [
        {
          "id": "2",
          "type": "text",
          "name": "name",
          "label": "Patient Name",
          "required": true
        },
        {
          "id": "4",
          "type": "text",
          "name": "locationName",
          "label": "Patient Location",
          "required": true
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
          "id": "22",
          "type": "date",
          "name": "sessionDate",
          "label": "Session Date",
          "required": true
        },
        {
          "id": "21",
          "type": "selectOne",
          "name": "subject",
          "label": "Session Subject",
          "required": true,
          "options": ["ITNs", "BreadingSite", "TRANSMISSION_PREVENTION"]
        },
        {
          "id": "23",
          "type": "number",
          "name": "sessions",
          "label": "Sessions",
          "required": true
        },
        {
          "id": "24",
          "type": "number",
          "name": "people",
          "label": "People",
          "required": true
        }
      ],
    },
  ]
};
