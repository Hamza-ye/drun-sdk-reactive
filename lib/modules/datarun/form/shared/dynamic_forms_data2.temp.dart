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
      "name": "استمارة تدبير الحالات",
      "code": "CHV_PATIENTS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n",
      },
      "fields": [
        {
          "id": "cD7eF8gH9I0",
          "form": "aB1cD2eF3G4",
          "type": "text",
          "name": "name",
          "label": "اسم المريض",
          "required": true,
        },
        {
          "id": "qR5sT6uV7W8",
          "form": "aB1cD2eF3G4",
          "type": "text",
          "name": "locationName",
          "label": "القرية",
          "required": true
        },
        {
          "id": "vW3xY4zA5B6",
          "form": "aB1cD2eF3G4",
          "type": "date",
          "name": "visitDate",
          "label": "تاريخ الزيارة",
          "required": true
        },
        {
          "id": "jK1lM2nO3P4",
          "form": "aB1cD2eF3G4",
          "type": "number",
          "name": "age",
          "label": "العمر بالسنوات",
          "required": true
        },
        {
          "id": "xY9zA0bC1D2",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "gender",
          "label": "الجنس",
          "required": true,
          "options": ["MALE", "FEMALE"]
        },
        {
          "id": "eF3gH4iJ5K6",
          "form": "aB1cD2eF3G4",
          "type": "boolean",
          "name": "pregnant",
          "label": "حامل؟",
          "required": true,
          "rules": [
            {
              "id": "eF5gH6iJ5K6",
              "field": "eF3gH4iJ5K6",
              "expression": "gender == 'FEMALE' && age > 10",
              "action": "show",
              "message":
                  "This field is hidden/invalid/requires attention because..."
            }
          ]
        },
        {
          "id": "lM7nO8pQ9R0",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "testResult",
          "label": "نتيجة الفحص",
          "required": true,
          "options": ["NEGATIVE", "PF", "PV", "MIX", "INVALID"]
        },
        {
          "id": "zA5bC6dE7F8",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "severity",
          "label": "Severity",
          "required": true,
          "options": ["SIMPLE", "SEVERE"],
          "rules": [
            {
              "id": "eF3gH8iJ5K9",
              "field": "zA5bC6dE7F8",
              "expression":
                  'testResult == "PF" || testResult == "PV" || testResult == "MIX"',
              "action": "show"
            }
          ]
        },
        {
          "id": "gH9iJ0kL1M2",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "treatment",
          "label": "العلاج",
          "required": true,
          "options": ["TREATED", "FIRSTDOSE", "REFERAL"],
          "rules": [
            {
              "id": "gH10J1kL1M2",
              "field": "gH9iJ0kL1M2",
              "expression":
                  'testResult == "PF" || testResult == "PV" || testResult == "MIX"',
              "action": "show",
            }
          ]
        },
        {
          "id": "nO3pQ4rS5T6",
          "form": "aB1cD2eF3G4",
          "type": "longText",
          "name": "comment",
          "label": "ملاحظات إن وجدت"
        }
      ],
      "mainFields": [
        {
          "id": "cD7eF8gH9I0",
          "form": "aB1cD2eF3G4",
          "type": "text",
          "name": "name",
          "label": "اسم المريض",
          "required": true
        },
        {
          "id": "qR5sT6uV7W8",
          "type": "text",
          "name": "locationName",
          "label": "القرية",
          "required": true
        }
      ]
    },
    {
      "id": "2",
      "uid": "r1j333zL3VB",
      "name": "جلسات التثقيف المجتمعي",
      "code": "CHV_SESSIONS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "mainFields": [
        {
          "type": "date",
          "name": "sessionDate",
          "label": "التاريخ",
          "required": true
        },
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
          "label": "التاريخ",
          "required": true
        },
        {
          "id": "21",
          "type": "selectOne",
          "name": "subject",
          "label": "نوع الجلسة",
          "required": true,
          "options": ["ITNs", "BreadingSite", "TRANSMISSION_PREVENTION"]
        },
        {
          "id": "23",
          "type": "number",
          "name": "sessions",
          "label": "عدد الجلسات",
          "required": true
        },
        {
          "id": "24",
          "type": "number",
          "name": "people",
          "label": "عدد المستفيدين",
          "required": true
        }
      ],
    },
  ]
};
