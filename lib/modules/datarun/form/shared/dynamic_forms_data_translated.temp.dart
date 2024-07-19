final Map<String, dynamic> dTempFormsTranslated = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dynamicForms": [
    {
      "id": "aB1cD2eF3G4",
      "uid": "aB1cD2eF3G4",
      "code": "CHV_PATIENTS_FORM",
      "defaultLocal": "en",
      "name": "استمارة تدبير حالات الملاريا",
      "label": {
        "en": "chv cases register",
        "ar": "تسجيل حالات chv"
      },
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n"
      },
      "fields": [
        {
          "id": "cD7eF8gH9I0",
          "uid": "cD7eF8gH9I0",
          "form": "aB1cD2eF3G4",
          "type": "text",
          "name": "name",
          "label": {
            "en": "Patient name",
            "ar": "اسم المريض"
          },
          "required": true
        },
        {
          "id": "qR5sT6uV7W8",
          "uid": "qR5sT6uV7W8",
          "form": "aB1cD2eF3G4",
          "type": "text",
          "name": "locationName",
          "label": {
            "en": "Location Name",
            "ar": "اسم الموقع"
          },
          "required": true
        },
        {
          "id": "vW3xY4zA5B6",
          "uid": "vW3xY4zA5B6",
          "form": "aB1cD2eF3G4",
          "type": "date",
          "name": "visitDate",
          "label": {
            "en": "Visit Date",
            "ar": "تاريخ الزيارة"
          },
          "required": true
        },
        {
          "id": "jK1lM2nO3P4",
          "uid": "jK1lM2nO3P4",
          "form": "aB1cD2eF3G4",
          "type": "integerPositive",
          "name": "age",
          "label": {
            "en": "Age in years",
            "ar": "العمر بالسنوات"
          },
          "required": true,
          "rules": [
            {
              "id": "eF66H6iJ5K6",
              "uid": "eF66H6iJ5K6",
              "field": "jK1lM2nO3P4",
              "expression": "age > 120",
              "action": "error",
              "message": {
                "en": "Value is Higher than normal",
                "ar": "العمر المدخل أعلى من الطبيعي"
              }
            }
          ]
        },
        {
          "id": "xY9zA0bC1D2",
          "uid": "xY9zA0bC1D2",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "gender",
          "label": {
            "en": "Gender",
            "ar": "الجنس"
          },
          "required": true,
          "options": [
            {
              "id": "5Y1200dC5D1",
              "uid": "5Y1200dC5D1",
              "name" : "MALE",
              "label": {
                "en": "Male",
                "ar": "ذكر"
              }
            },
            {
              "id": "xY1200bC1D2",
              "uid": "xY1200bC1D2",
              "name" : "FEMALE",
              "label": {
                "en": "Female",
                "ar": "أنثى"
              }
            }
          ]
        },
        {
          "id": "eF3gH4iJ5K6",
          "uid": "eF3gH4iJ5K6",
          "form": "aB1cD2eF3G4",
          "type": "boolean",
          "name": "pregnant",
          "label": {
            "en": "Is pregnant?",
            "ar": "هل هي حامل؟"
          },
          "required": true,
          "rules": [
            {
              "id": "eF5gH6iJ5K6",
              "uid": "eF5gH6iJ5K6",
              "field": "eF3gH4iJ5K6",
              "expression": "gender == 'FEMALE' && age > 10",
              "action": "show",
              "message": {
                "en": "This field is hidden/invalid/requires attention because...",
                "ar": "هذا الحقل مخفي/غير صالح/يتطلب الانتباه لأنه..."
              }
            }
          ]
        },
        {
          "id": "lM7nO8pQ9R0",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "testResult",
          "label": {
            "en": "Test Result",
            "ar": "نتيجة الفحص"
          },
          "required": true,
          "options": [
            {
              "id": "6Y1288dC5D1",
              "name" : "NEGATIVE",
              "label": {
                "en": "Negative",
                "ar": "سلبي"
              }
            },
            {
              "id": "6Y3338dC5D1",
              "name": "PF",
              "label": {
                "en": "Plasmodium falciparum",
                "ar": "بلاسموديوم فالسيباروم"
              }
            },
            {
              "id": "555288dC5D1",
              "name": "PV",
              "label": {
                "en": "Plasmodium vivax",
                "ar": "بلاسموديوم فيفاكس"
              }
            },
            {
              "id": "666288dC5D1",
              "name": "MIX",
              "label": {
                "en": "Mixed",
                "ar": "مختلط"
              }
            },
            {
              "id": "688888BC7D1",
              "name": "INVALID",
              "label": {
                "en": "Invalid",
                "ar": "غير صالح"
              }
            }
          ]
        },
        {
          "id": "zA5bC6dE7F8",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "severity",
          "label": {
            "en": "Severity",
            "ar": "الشدة"
          },
          "required": true,
          "options": [
            {
              "id": "9CC8F8BC7D1",
              "name": "SIMPLE",
              "label": {
                "en": "Simple",
                "ar": "بسيطة"
              }
            },
            {
              "id": "10CDF8BC7D1",
              "name": "SEVERE",
              "label": {
                "en": "Severe",
                "ar": "وخيمة"
              }
            }
          ],
          "rules": [
            {
              "id": "eF3gH8iJ5K9",
              "field": "zA5bC6dE7F8",
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "show"
            }
          ]
        },
        {
          "id": "gH9iJ0kL1M2",
          "form": "aB1cD2eF3G4",
          "type": "selectOne",
          "name": "treatment",
          "label": {
            "en": "Treatment",
            "ar": "العلاج"
          },
          "required": true,
          "options": [
            {
              "id": "1CD8FEBC7D1",
              "name": "TREATED",
              "label": {
                "en": "Treated",
                "ar": "معالج"
              }
            },
            {
              "id": "ECDYFEBC8D1",
              "name": "FIRSTDOSE",
              "label": {
                "en": "First Dose",
                "ar": "الجرعة الأولى"
              }
            },
            {
              "id": "9RD8FEFC7D0",
              "name": "REFERAL",
              "label": {
                "en": "Referral",
                "ar": "إحالة"
              }
            }
          ],
          "rules": [
            {
              "id": "gH10J1kL1M2",
              "field": "gH9iJ0kL1M2",
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "show"
            }
          ]
        },
        {
          "id": "nO3pQ4rS5T6",
          "form": "aB1cD2eF3G4",
          "type": "longText",
          "name": "comment",
          "label": {
            "en": "Comments",
            "ar": "ملاحظات وتعليقات"
          }
        }
      ],
      "mainFields": [
        {
          "id": "cD7eF8gH9I0",
          "form": "aB1cD2eF3G4",
          "type": "text",
          "name": "name",
          "label": {
            "en": "Patient name",
            "ar": "اسم المريض"
          },
          "required": true
        },
        {
          "id": "qR5sT6uV7W8",
          "type": "text",
          "name": "locationName",
          "label": {
            "en": "Location name",
            "ar": "اسم الموقع"
          },
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
      "label": {
        "en": "Community Awareness Sessions",
        "ar": "جلسات التثقيف المجتمعي"
      },
      "defaultLocal": "ar",
      "mainFields": [
        {
          "type": "date",
          "name": "sessionDate",
          "label": {
            "en": "Date",
            "ar": "التاريخ"
          },
          "required": true
        }
      ],
      "activity": {
        "id": 17,
        "uid": "oBne891mA9n"
      },
      "fields": [
        {
          "id": "22",
          "type": "date",
          "name": "sessionDate",
          "label": {
            "en": "Date",
            "ar": "التاريخ"
          },
          "required": true
        },
        {
          "id": "21",
          "type": "selectOne",
          "name": "subject",
          "label": {
            "en": "Session Type",
            "ar": "نوع الجلسة"
          },
          "required": true,
          "options": [
            {
              "label": {
                "en": "ITNs",
                "ar": "النموسيات المعالجة"
              },
              "name": "ITNs"
            },
            {
              "label": {
                "en": "Breading Site",
                "ar": "مواقع التوالد"
              },
              "name": "BreadingSite"
            },
            {
              "label": {
                "en": "Transmission Prevention",
                "ar": "الوقاية من الانتقال"
              },
              "name": "TRANSMISSION_PREVENTION"
            }
          ]
        },
        {
          "id": "23",
          "type": "number",
          "name": "sessions",
          "label": {
            "en": "Number of Sessions",
            "ar": "عدد الجلسات"
          },
          "required": true
        },
        {
          "id": "24",
          "type": "number",
          "name": "people",
          "label": {
            "en": "Number of Beneficiaries",
            "ar": "عدد المستفيدين"
          },
          "required": true
        }
      ]
    },
  ]
};
