final Map<String, dynamic> dSampleAllForms = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dataForms": [
    {
      "createdBy": null,
      "createdDate": "2024-07-26T19:53:13.664Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-07-26T19:53:13.830Z",
      "id": "66a3f93774a867644e1935f0",
      "uid": "KeaZ3KDRfQB",
      "code": "CHV_PATIENTS_FORM",
      "name": "استمارة تدبير حالات الملاريا",
      "description": "CHV cases registering form",
      "disabled": false,
      "fields": [
        {
          "uid": "qR5sT6uV7W8",
          "code": null,
          "name": "locationName",
          "description": null,
          "type": "Text",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Location Name",
            "ar": "اسم الموقع"
          }
        },
        {
          "uid": "cD7eF8gH9I0",
          "code": null,
          "name": "name",
          "description": "Name of the patient",
          "type": "Text",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Patient name",
            "ar": "اسم المريض"
          }
        },
        {
          "uid": "vW3xY4zA5B6",
          "code": null,
          "name": "visitDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Visit Date",
            "ar": "تاريخ الزيارة"
          }
        },
        {
          "uid": "jK1lM2nO3P4",
          "code": null,
          "name": "age",
          "description": "Age in Years and (months for age less than 1 year)",
          "type": "Age",
          "mandatory": true,
          "rules": [
            {
              "uid": "eF66H6iJ5K6",
              "expression": "age <= 0 || age > 100",
              "action": "Error",
              "filterInfo": null
            }
          ],
          "options": [
          ],
          "label": {
            "en": "Age",
            "ar": "العمر"
          }
        },
        {
          "uid": "xY9zA0bC1D2",
          "code": null,
          "name": "gender",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "rules": [
          ],
          "options": [
            {
              "uid": "5Y1200dC5D1",
              "code": null,
              "name": "MALE",
              "description": null,
              "label": {
                "en": "Male",
                "ar": "ذكر"
              }
            },
            {
              "uid": "xY1200bC1D2",
              "code": null,
              "name": "FEMALE",
              "description": null,
              "label": {
                "en": "Female",
                "ar": "أنثى"
              }
            }
          ],
          "label": {
            "en": "Gender",
            "ar": "الجنس"
          }
        },
        {
          "uid": "eF3gH4iJ5K6",
          "code": null,
          "name": "pregnant",
          "description": null,
          "type": "Boolean",
          "mandatory": true,
          "rules": [
            {
              "uid": "eF5gH6iJ5K6",
              "expression": "gender == 'FEMALE' && age >= 14",
              "action": "Show",
              "filterInfo": null
            }
          ],
          "options": [
          ],
          "label": {
            "en": "Is pregnant?",
            "ar": "هل هي حامل؟"
          }
        },
        {
          "uid": "lM7nO8pQ9R0",
          "code": null,
          "name": "testResult",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "rules": [
          ],
          "options": [
            {
              "uid": "6Y1288dC5D1",
              "code": null,
              "name": "NEGATIVE",
              "description": null,
              "label": {
                "en": "Negative",
                "ar": "سلبي"
              }
            },
            {
              "uid": "6Y3338dC5D1",
              "code": null,
              "name": "PF",
              "description": null,
              "label": {
                "en": "Plasmodium falciparum",
                "ar": "بلاسموديوم فالسيباروم"
              }
            },
            {
              "uid": "555288dC5D1",
              "code": null,
              "name": "PV",
              "description": null,
              "label": {
                "en": "Plasmodium vivax",
                "ar": "بلاسموديوم فيفاكس"
              }
            },
            {
              "uid": "666288dC5D1",
              "code": null,
              "name": "MIX",
              "description": null,
              "label": {
                "en": "Mixed",
                "ar": "مختلط"
              }
            },
            {
              "uid": "688888BC7D1",
              "code": null,
              "name": "INVALID",
              "description": null,
              "label": {
                "en": "Invalid",
                "ar": "غير صالح"
              }
            }
          ],
          "label": {
            "en": "Test Result",
            "ar": "نتيجة الفحص"
          }
        },
        {
          "uid": "z33bC6dE7F8",
          "code": null,
          "name": "detectionType",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "rules": [
            {
              "uid": "eF3gH8iJ5K9",
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "filterInfo": null
            }
          ],
          "options": [
            {
              "uid": "9CC8F66C7D1",
              "code": null,
              "name": "REACTIVE",
              "description": null,
              "label": {
                "en": "Reactive",
                "ar": "زيارة روتينية"
              }
            },
            {
              "uid": "10CDF77C7D1",
              "code": null,
              "name": "ACTIVE",
              "description": null,
              "label": {
                "en": "Active",
                "ar": "بحث نشط"
              }
            }
          ],
          "label": {
            "en": "Detection Type",
            "ar": "نوع الاكتشاف"
          }
        },
        {
          "uid": "zA5bDDdE7F8",
          "code": null,
          "name": "severity",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "rules": [
            {
              "uid": "eF9gH8iJ5K9",
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "filterInfo": null
            }
          ],
          "options": [
            {
              "uid": "9CC8F8BC7D1",
              "code": null,
              "name": "SIMPLE",
              "description": null,
              "label": {
                "en": "Simple",
                "ar": "بسيطة"
              }
            },
            {
              "uid": "10CDF8BC7D1",
              "code": null,
              "name": "SEVERE",
              "description": null,
              "label": {
                "en": "Severe",
                "ar": "وخيمة"
              }
            }
          ],
          "label": {
            "en": "Severity",
            "ar": "تصنيف الحالة"
          }
        },
        {
          "uid": "gH9iJ0kL1M2",
          "code": null,
          "name": "treatment",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "rules": [
            {
              "uid": "gH10J1kL1M2",
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "filterInfo": null
            },
            {
              "uid": "gH99J1kL1M2",
              "expression": "pregnant && (testResult == 'PF' || testResult == 'PV' || testResult == 'MIX')",
              "action": "Filter",
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": [
                  "TREATED",
                  "FIRSTDOSE"
                ],
                "optionsToShow": null
              }
            },
            {
              "uid": "gH1011kL1M2",
              "expression": "severity == 'SEVERE'",
              "action": "Filter",
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": [
                  "TREATED"
                ],
                "optionsToShow": null
              }
            }
          ],
          "options": [
            {
              "uid": "1CD8FEBC7D1",
              "code": null,
              "name": "TREATED",
              "description": null,
              "label": {
                "en": "Treated",
                "ar": "معالج"
              }
            },
            {
              "uid": "ECDYFEBC8D1",
              "code": null,
              "name": "FIRSTDOSE",
              "description": null,
              "label": {
                "en": "First Dose",
                "ar": "الجرعة الأولى"
              }
            },
            {
              "uid": "9RD8FEFC7D0",
              "code": null,
              "name": "REFERAL",
              "description": null,
              "label": {
                "en": "Referral",
                "ar": "إحالة"
              }
            }
          ],
          "label": {
            "en": "Treatment",
            "ar": "تدبير الحالة"
          }
        },
        {
          "uid": "nO3pQ4rS5T6",
          "code": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Comments",
            "ar": "ملاحظات وتعليقات"
          }
        }
      ],
      "mainFields": [
        {
          "uid": "cD7eF8gH9I0",
          "code": null,
          "name": "name",
          "description": null,
          "type": "Text",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Patient name",
            "ar": "اسم المريض"
          }
        },
        {
          "uid": "qR5sT6uV7W8",
          "code": null,
          "name": "locationName",
          "description": null,
          "type": "Text",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Location name",
            "ar": "اسم الموقع"
          }
        }
      ],
      "activity": "oBne891mA9n",
      "defaultLocal": "en",
      "version": 2,
      "label": {
        "en": "chv cases register",
        "ar": "تسجيل حالات chv"
      }
    },
    {
      "createdBy": "admin",
      "createdDate": "2024-07-26T19:59:29.194Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-07-26T19:59:29.194Z",
      "id": "66a4002174a867644e1935f6",
      "uid": "EYAcXGuoCPJ",
      "code": "CHV_SESSIONS_FORM",
      "name": "جلسات التثقيف المجتمعي",
      "description": null,
      "disabled": null,
      "fields": [
        {
          "uid": "oBne999mA9n",
          "code": null,
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Date",
            "ar": "التاريخ"
          }
        },
        {
          "uid": "oBne339mA9n",
          "code": null,
          "name": "subject",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "rules": [
          ],
          "options": [
            {
              "uid": "oBne669mA9n",
              "code": null,
              "name": "ITNs",
              "description": null,
              "label": {
                "en": "ITNs",
                "ar": "النموسيات المعالجة"
              }
            },
            {
              "uid": "oBne889mA9n",
              "code": null,
              "name": "BreadingSite",
              "description": null,
              "label": {
                "en": "Breading Site",
                "ar": "مواقع التوالد"
              }
            },
            {
              "uid": "oBne111mA9n",
              "code": null,
              "name": "TRANSMISSION_PREVENTION",
              "description": null,
              "label": {
                "en": "Transmission Prevention",
                "ar": "الوقاية من الانتقال"
              }
            }
          ],
          "label": {
            "en": "Session Type",
            "ar": "نوع الجلسة"
          }
        },
        {
          "uid": "o999339mA9n",
          "code": null,
          "name": "people",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Number of Beneficiaries",
            "ar": "عدد المستفيدين"
          }
        }
      ],
      "mainFields": [
        {
          "uid": "oBne999mA9n",
          "code": null,
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "rules": [
          ],
          "options": [
          ],
          "label": {
            "en": "Date",
            "ar": "التاريخ"
          }
        }
      ],
      "activity": "oBne891mA9n",
      "defaultLocal": "ar",
      "version": 1,
      "label": {
        "en": "Community Awareness Sessions",
        "ar": "جلسات التثقيف المجتمعي"
      }
    }
  ]
};
