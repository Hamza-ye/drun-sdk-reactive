final Map<String, dynamic> dTempFormsTranslated = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dataForms": [
    {
      "id": "aB1cD2eF3G4",
      "uid": "aB1cD2eF3G4",
      "code": "CHV_PATIENTS_FORM",
      "defaultLocal": "en",
      "description": "CHV cases registering form",
      "disabled": false,
      "name": "chv cases register",
      "label": {"en": "chv cases register", "ar": "تسجيل حالات chv"},
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": "66a1891525645b4a0b287a50",
        "uid": "oBne891mA9n",
        "code": "CHV",
        "name": "مدخلات النشاط الروتيني لمتطوعات صحة المجتمع",
        "startDate": "2024-07-24T23:06:00Z",
        "disabled": false,
        "deleteClientData": false
      },
      "fields": [
        {
          "uid": "cD7eF8gH9I0",
          "type": "Text",
          "name": "name",
          "label": {"en": "Patient name", "ar": "اسم المريض"},
          "mandatory": true
        },
        {
          "uid": "qR5sT6uV7W8",
          "type": "Text",
          "name": "locationName",
          "label": {"en": "Location Name", "ar": "اسم الموقع"},
          "mandatory": true
        },
        {
          "uid": "vW3xY4zA5B6",
          "type": "Date",
          "name": "visitDate",
          "label": {"en": "Visit Date", "ar": "تاريخ الزيارة"},
          "mandatory": true
        },
        {
          "uid": "jK1lM2nO3P4",
          "type": "Age",
          "name": "age",
          "label": {"en": "Age", "ar": "العمر"},
          "mandatory": true,
          "rules": [
            {
              "uid": "eF66H6iJ5K6",
              "expression": "age <= 0 || age > 100",
              "action": "Error",
              "message": {
                "en": "Make sure a valid age is entered",
                "ar": "تأكد من ادخال العمر الصحيح"
              }
            }
          ]
        },
        {
          "uid": "xY9zA0bC1D2",
          "type": "SelectOne",
          "name": "gender",
          "label": {"en": "Gender", "ar": "الجنس"},
          "mandatory": true,
          "options": [
            {
              "uid": "5Y1200dC5D1",
              "name": "MALE",
              "label": {"en": "Male", "ar": "ذكر"}
            },
            {
              "uid": "xY1200bC1D2",
              "name": "FEMALE",
              "label": {"en": "Female", "ar": "أنثى"}
            }
          ]
        },
        {
          "uid": "eF3gH4iJ5K6",
          "type": "Boolean",
          "name": "pregnant",
          "label": {"en": "Is pregnant?", "ar": "هل هي حامل؟"},
          "mandatory": true,
          "rules": [
            {
              "uid": "eF5gH6iJ5K6",
              "expression": "gender == 'FEMALE' && age >= 14",
              "action": "Show",
              "message": {
                "en":
                    "This field is hidden/invalid/requires attention because...",
                "ar": "هذا الحقل مخفي/غير صالح/يتطلب الانتباه لأنه..."
              }
            }
          ]
        },
        {
          "uid": "lM7nO8pQ9R0",
          "type": "SelectOne",
          "name": "testResult",
          "label": {"en": "Test Result", "ar": "نتيجة الفحص"},
          "mandatory": true,
          "options": [
            {
              "uid": "6Y1288dC5D1",
              "name": "NEGATIVE",
              "label": {"en": "Negative", "ar": "سلبي"}
            },
            {
              "uid": "6Y3338dC5D1",
              "name": "PF",
              "label": {
                "en": "Plasmodium falciparum",
                "ar": "بلاسموديوم فالسيباروم"
              }
            },
            {
              "uid": "555288dC5D1",
              "name": "PV",
              "label": {"en": "Plasmodium vivax", "ar": "بلاسموديوم فيفاكس"}
            },
            {
              "uid": "666288dC5D1",
              "name": "MIX",
              "label": {"en": "Mixed", "ar": "مختلط"}
            },
            {
              "uid": "688888BC7D1",
              "name": "INVALID",
              "label": {"en": "Invalid", "ar": "غير صالح"}
            }
          ]
        },
        {
          "uid": "z33bC6dE7F8",
          "type": "SelectOne",
          "name": "detectionType",
          "label": {"en": "Detection Type", "ar": "نوع الاكتشاف"},
          "mandatory": true,
          "options": [
            {
              "uid": "9CC8F66C7D1",
              "name": "REACTIVE",
              "label": {"en": "Reactive", "ar": "زيارة روتينية"}
            },
            {
              "uid": "10CDF77C7D1",
              "name": "ACTIVE",
              "label": {"en": "Active", "ar": "بحث نشط"}
            }
          ],
          "rules": [
            {
              "uid": "eF3gH8iJ5K9",
              "expression":
                  "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show"
            }
          ]
        },
        {
          "uid": "zA5bDDdE7F8",
          "type": "SelectOne",
          "name": "severity",
          "label": {"en": "Severity", "ar": "تصنيف الحالة"},
          "mandatory": true,
          "options": [
            {
              "uid": "9CC8F8BC7D1",
              "name": "SIMPLE",
              "label": {"en": "Simple", "ar": "بسيطة"}
            },
            {
              "uid": "10CDF8BC7D1",
              "name": "SEVERE",
              "label": {"en": "Severe", "ar": "وخيمة"}
            }
          ],
          "rules": [
            {
              "uid": "eF9gH8iJ5K9",
              "expression":
                  "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show"
            }
          ]
        },
        {
          "uid": "gH9iJ0kL1M2",
          "type": "SelectOne",
          "name": "treatment",
          "label": {"en": "Treatment", "ar": "تدبير الحالة"},
          "mandatory": true,
          "options": [
            {
              "uid": "1CD8FEBC7D1",
              "name": "TREATED",
              "label": {"en": "Treated", "ar": "معالج"}
            },
            {
              "uid": "ECDYFEBC8D1",
              "name": "FIRSTDOSE",
              "label": {"en": "First Dose", "ar": "الجرعة الأولى"}
            },
            {
              "uid": "9RD8FEFC7D0",
              "name": "REFERAL",
              "label": {"en": "Referral", "ar": "إحالة"}
            }
          ],
          "rules": [
            {
              "uid": "gH10J1kL1M2",
              "expression":
                  "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show"
            },
            {
              "uid": "gH99J1kL1M2",
              "expression":
                  "pregnant && (testResult == 'PF' || testResult == 'PV' || testResult == 'MIX')",
              "action": "Filter",
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": ["TREATED", "FIRSTDOSE"]
              }
            },
            {
              "uid": "gH1011kL1M2",
              "expression": "severity == 'SEVERE'",
              "action": "Filter",
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": ["TREATED"]
              }
            }
          ]
        },
        {
          "uid": "nO3pQ4rS5T6",
          "type": "LongText",
          "name": "comment",
          "label": {"en": "Comments", "ar": "ملاحظات وتعليقات"}
        }
      ],
      "mainFields": [
        {
          "uid": "cD7eF8gH9I0",
          "type": "Text",
          "name": "name",
          "label": {"en": "Patient name", "ar": "اسم المريض"},
          "mandatory": true
        },
        {
          "uid": "qR5sT6uV7W8",
          "type": "Text",
          "name": "locationName",
          "label": {"en": "Location name", "ar": "اسم الموقع"},
          "mandatory": true
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
          "uid": "oBne999mA9n",
          "type": "date",
          "name": "sessionDate",
          "label": {"en": "Date", "ar": "التاريخ"},
          "mandatory": true
        }
      ],
      "activity": {
        "id": "66a1891525645b4a0b287a50",
        "uid": "oBne891mA9n",
        "code": "CHV",
        "name": "مدخلات النشاط الروتيني لمتطوعات صحة المجتمع",
        "startDate": "2024-07-24T23:06:00Z",
        "disabled": false,
        "deleteClientData": false
      },
      "fields": [
        {
          "uid": "oBne999mA9n",
          "type": "date",
          "name": "sessionDate",
          "label": {"en": "Date", "ar": "التاريخ"},
          "mandatory": true
        },
        {
          "uid": "oBne339mA9n",
          "type": "SelectOne",
          "name": "subject",
          "label": {"en": "Session Type", "ar": "نوع الجلسة"},
          "mandatory": true,
          "options": [
            {
              "uid": "oBne669mA9n",
              "label": {"en": "ITNs", "ar": "النموسيات المعالجة"},
              "name": "ITNs"
            },
            {
              "uid": "oBne889mA9n",
              "label": {"en": "Breading Site", "ar": "مواقع التوالد"},
              "name": "BreadingSite"
            },
            {
              "uid": "oBne111mA9n",
              "label": {
                "en": "Transmission Prevention",
                "ar": "الوقاية من الانتقال"
              },
              "name": "TRANSMISSION_PREVENTION"
            }
          ]
        },
        {
          "uid": "o999339mA9n",
          "type": "IntegerZeroOrPositive",
          "name": "people",
          "label": {"en": "Number of Beneficiaries", "ar": "عدد المستفيدين"},
          "mandatory": true
        }
      ]
    },
  ]
};
