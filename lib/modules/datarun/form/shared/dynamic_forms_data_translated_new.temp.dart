final Map<String, dynamic> dTempFormsTranslated = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 3,
  "pageSize": 20,
  "dataForms": [
    {
      "createdBy": "admin",
      "createdDate": "2024-07-27T22:48:11.559Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-07-27T22:48:11.942Z",
      "uid": "KcsA3KETRbY",
      "code": "CHV_PATIENTS_FORM",
      "name": "استمارة تدبير حالات الملاريا",
      "description": "CHV cases registering form",
      "disabled": false,
      "rules": [
        {
          "uid": "eF66H6iJ5K6",
          "field": "age",
          "expression": "age <= 0 || age > 100",
          "action": "Error",
          "filterInfo": null
        },
        {
          "uid": "eF5gH6iJ5K6",
          "field": "pregnant",
          "expression": "gender == 'FEMALE' && age >= 14",
          "action": "Show",
          "filterInfo": null
        },
        {
          "uid": "eF3gH8iJ5K9",
          "field": "detectionType",
          "expression":
          "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
          "action": "Show",
          "filterInfo": null
        },
        {
          "uid": "eF9gH8iJ5K9",
          "field": "severity",
          "expression":
          "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
          "action": "Show",
          "filterInfo": null
        },
        {
          "uid": "gH10J1kL1M2",
          "field": "treatment",
          "expression":
          "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
          "action": "Show",
          "filterInfo": null
        },
        {
          "uid": "gH99J1kL1M2",
          "field": "treatment",
          "expression":
          "pregnant && (testResult == 'PF' || testResult == 'PV' || testResult == 'MIX')",
          "action": "Filter",
          "filterInfo": {
            "fieldToFilter": "treatment",
            "optionsToHide": ["TREATED", "FIRSTDOSE"],
            "optionsToShow": null
          }
        },
        {
          "uid": "gH1011kL1M2",
          "field": "treatment",
          "expression": "severity == 'SEVERE'",
          "action": "Filter",
          "filterInfo": {
            "fieldToFilter": "treatment",
            "optionsToHide": ["TREATED"],
            "optionsToShow": null
          }
        }
      ],
      "options": [
        {
          "uid": "5Y1200dC5D1",
          "name": "MALE",
          // listName is a unique per form name
          "listName": "genders",
          "description": null,
          "label": {"en": "Male", "ar": "ذكر"}
        },
        {
          "uid": "xY1200bC1D2",
          "listName": "genders",
          "name": "FEMALE",
          "description": null,
          "label": {"en": "Female", "ar": "أنثى"}
        },
        {
          "uid": "6Y1288dC5D1",
          "listName": "testResults",
          "name": "NEGATIVE",
          "description": null,
          "label": {"en": "Negative", "ar": "سلبي"}
        },
        {
          "uid": "6Y3338dC5D1",
          "listName": "testResults",
          "name": "PF",
          "description": null,
          "label": {
            "en": "Plasmodium falciparum",
            "ar": "بلاسموديوم فالسيباروم"
          }
        },
        {
          "uid": "555288dC5D1",
          "listName": "testResults",
          "name": "PV",
          "description": null,
          "label": {"en": "Plasmodium vivax", "ar": "بلاسموديوم فيفاكس"}
        },
        {
          "uid": "666288dC5D1",
          "listName": "testResults",
          "name": "MIX",
          "description": null,
          "label": {"en": "Mixed", "ar": "مختلط"}
        },
        {
          "uid": "688888BC7D1",
          "listName": "testResults",
          "name": "INVALID",
          "description": null,
          "label": {"en": "Invalid", "ar": "غير صالح"}
        },
        {
          "uid": "9CC8F66C7D1",
          "listName": "detectionTypes",
          "name": "REACTIVE",
          "description": null,
          "label": {"en": "Reactive", "ar": "زيارة روتينية"}
        },
        {
          "uid": "10CDF77C7D1",
          "listName": "detectionTypes",
          "name": "ACTIVE",
          "description": null,
          "label": {"en": "Active", "ar": "بحث نشط"}
        },
        {
          "uid": "9CC8F8BC7D1",
          "listName": "severities",
          "name": "SIMPLE",
          "description": null,
          "label": {"en": "Simple", "ar": "بسيطة"}
        },
        {
          "uid": "10CDF8BC7D1",
          "listName": "severities",
          "name": "SEVERE",
          "description": null,
          "label": {"en": "Severe", "ar": "وخيمة"}
        },
        {
          "uid": "1CD8FEBC7D1",
          "listName": "treatments",
          "name": "TREATED",
          "description": null,
          "label": {"en": "Treated", "ar": "معالج"}
        },
        {
          "uid": "ECDYFEBC8D1",
          "listName": "treatments",
          "name": "FIRST_DOSE",
          "description": null,
          "label": {"en": "First Dose", "ar": "الجرعة الأولى"}
        },
        {
          "uid": "ECDYF9628D1",
          "listName": "treatments",
          "name": "FIRST_DOSE_REFERRAL",
          "description": null,
          "label": {"en": "First Dose & Referral", "ar": "الجرعة الأولى وإحالة"}
        },
        {
          "uid": "9RD8FEFC7D0",
          "listName": "treatments",
          "name": "REFERRAL",
          "description": null,
          "label": {"en": "Referral", "ar": "إحالة"}
        },
        {
          "uid": "oBne669mA9n",
          "listName": "sessionTypes",
          "name": "ITNs",
          "description": null,
          "label": {"en": "ITNs", "ar": "النموسيات المعالجة"}
        },
        {
          "uid": "oBne889mA9n",
          "listName": "sessionTypes",
          "name": "BreadingSite",
          "description": null,
          "label": {"en": "Breading Site", "ar": "مواقع التوالد"}
        },
        {
          "uid": "oBne111mA9n",
          "listName": "sessionTypes",
          "name": "TRANSMISSION_PREVENTION",
          "description": null,
          "label": {
            "en": "Transmission Prevention",
            "ar": "الوقاية من الانتقال"
          }
        },
        {
          "uid": "5YEF80dC5D1",
          "listName": "drugsTypes",
          "name": "MRDT",
          "description": null,
          "label": {"en": "Malaria RDT", "ar": "اشرطة الفحص السريع"}
        },
        {
          "uid": "xBCD10bC1D2",
          "listName": "drugsTypes",
          "name": "MDrugs",
          "description": null,
          "label": {"en": "Malaria Drugs", "ar": "أدوية الملاريا"}
        },
        {
          "uid": "xBCDDDbC1D2",
          "listName": "drugsTypes",
          "name": "ARTSUPP",
          "description": null,
          "label": {"en": "ArtisunatSupp", "ar": "تحاميل أرتيسونات"}
        }
      ],
      "fields": [
        {
          "uid": "jK1lM2nO3P4",
          "name": "age",
          "description": "Age in Years and (months for age less than 1 year)",
          "type": "Age",
          "mandatory": true,
          "mainField": false,
          "listName": null,
          "label": {"en": "Age", "ar": "العمر"}
        },
        {
          "uid": "cD7eF8gH9I0",
          "name": "name",
          "description": "Name of the patient",
          "type": "Text",
          "mandatory": true,
          "mainField": true,
          "listName": null,
          "label": {"en": "Patient name", "ar": "اسم المريض"}
        },
        {
          "uid": "vW3xY4zA5B6",
          "name": "visitDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": false,
          "listName": null,
          "label": {"en": "Visit Date", "ar": "تاريخ الزيارة"}
        },
        {
          "uid": "qR5sT6uV7W8",
          "name": "locationName",
          "description": null,
          "type": "Text",
          "mandatory": true,
          "mainField": true,
          "listName": null,
          "label": {"en": "Location Name", "ar": "اسم الموقع"}
        },
        {
          "uid": "xY9zA0bC1D2",
          "name": "gender",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          // referencing the listName of options
          "listName": "genders",
          "label": {"en": "Gender", "ar": "الجنس"}
        },
        {
          "uid": "eF3gH4iJ5K6",
          "name": "pregnant",
          "description": null,
          "type": "Boolean",
          "mandatory": true,
          "mainField": false,
          "listName": null,
          "label": {"en": "Is pregnant?", "ar": "هل هي حامل؟"}
        },
        {
          "uid": "lM7nO8pQ9R0",
          "name": "testResult",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "listName": "testResults",
          "label": {"en": "Test Result", "ar": "نتيجة الفحص"}
        },
        {
          "uid": "z33bC6dE7F8",
          "name": "detectionType",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "listName": "detectionTypes",
          "label": {"en": "Detection Type", "ar": "نوع الاكتشاف"}
        },
        {
          "uid": "zA5bDDdE7F8",
          "name": "severity",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "listName": "severities",
          "label": {"en": "Severity", "ar": "تصنيف الحالة"}
        },
        {
          "uid": "gH9iJ0kL1M2",
          "name": "treatment",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "listName": "treatments",
          "label": {"en": "Treatment", "ar": "تدبير الحالة"}
        },
        {
          "uid": "nO3pQ4rS5T6",
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "listName": null,
          "label": {"en": "Comments", "ar": "ملاحظات وتعليقات"}
        }
      ],
      "activity": "oBne891mA9n",
      "defaultLocal": "en",
      "version": 5,
      "label": {"en": "chv cases register", "ar": "تسجيل حالات chv"}
    },
    {
      "uid": "RQlMiMcukid",
      "code": "CHV_SESSIONS_FORM",
      "name": "جلسات التثقيف المجتمعي",
      "description": null,
      "disabled": null,
      "rules": [
        {
          "uid": "eF5gH6iJ5K6",
          "field": "peopleItns",
          "expression": "subject.contains('ITNs')",
          "action": "Show",
          "filterInfo": null
        },
        {
          "uid": "eF5gH6iJ5K6",
          "field": "peopleBreadingSites",
          "expression": "subject.contains('BreadingSite')",
          "action": "Show",
          "filterInfo": null
        },
        {
          "uid": "eF5gH6iJ5K6",
          "field": "peopleTransmissionPrevention",
          "expression": "subject.contains('Transmission_Prevention')",
          "action": "Show",
          "filterInfo": null
        }
      ],
      "options": [
        {
          "uid": "oBne669mA9n",
          "listName": "sessionTypes",
          "name": "ITNs",
          "description": null,
          "label": {"en": "ITNs", "ar": "النموسيات المعالجة"}
        },
        {
          "uid": "oBne889mA9n",
          "listName": "sessionTypes",
          "name": "BreadingSite",
          "description": null,
          "label": {"en": "Breading Site", "ar": "مواقع التوالد"}
        },
        {
          "uid": "oBne111mA9n",
          "listName": "sessionTypes",
          "name": "Transmission_Prevention",
          "description": null,
          "label": {
            "en": "Transmission Prevention",
            "ar": "الوقاية من الانتقال"
          }
        }
      ],
      "fields": [
        {
          "uid": "oBne999mA9n",
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "label": {"en": "Date", "ar": "التاريخ"}
        },
        {
          "uid": "oBne339mA9n",
          "name": "subject",
          "description": null,
          "type": "SelectMulti",
          "mandatory": true,
          "mainField": false,
          "listName": "sessionTypes",
          "label": {"en": "Session Type", "ar": "نوع الجلسة"}
        },
        {
          "uid": "o199339mA9n",
          "name": "peopleItns",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "label": {"en": "Number of Beneficiaries ITNs", "ar": "عدد المستفيدين ناموسيات"}
        },
        {
          "uid": "o199339mA9n",
          "name": "peopleBreadingSites",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "label": {"en": "Number of Beneficiaries BreadingSite", "ar": "عدد المستفيدين مواقع توالد"}
        },
        {
          "uid": "o199339mA9n",
          "name": "peopleTransmissionPrevention",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "label": {"en": "Number of Beneficiaries", "ar": "عدد المستفيدين الوقاية من الانتقال"}
        }
      ],
      "mainFields": [
        {
          "uid": "oBne999mA9n",
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "options": [],
          "label": {"en": "Date", "ar": "التاريخ"}
        }
      ],
      "activity": "oBne891mA9n",
      "defaultLocal": "ar",
      "version": 4,
      "label": {
        "en": "Community Awareness Sessions",
        "ar": "جلسات التثقيف المجتمعي"
      }
    },
    {
      "createdBy": null,
      "createdDate": "2024-07-27T22:48:11.572Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-07-27T22:48:12.029Z",
      "uid": "zglED4TsbTh",
      "code": "CHV_SUPPLY_FORM",
      "name": "استخدام الادوية والفحص السريع",
      "description": "CHV cases registering form",
      "disabled": false,
      "fields": [
        {
          "uid": "cD33F8gH9I0",
          "name": "item",
          "description": "Name of the patient",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "listName": "drugsTypes",
          "rules": [],
          "options": [
            {
              "uid": "5YEF80dC5D1",
              "listName": "drugsTypes",
              "name": "MRDT",
              "description": null,
              "label": {"en": "Malaria RDT", "ar": "اشرطة الفحص السريع"}
            },
            {
              "uid": "xBCD10bC1D2",
              "listName": "drugsTypes",
              "name": "MDrugs",
              "description": null,
              "label": {"en": "Malaria Drugs", "ar": "أدوية الملاريا"}
            },
            {
              "uid": "xBCDDDbC1D2",
              "listName": "drugsTypes",
              "name": "ARTSUPP",
              "description": null,
              "label": {"en": "ArtisunatSupp", "ar": "تحاميل أرتيسونات"}
            }
          ],
          "label": {"en": "Supplay Item", "ar": "نوع العلاج"}
        },
        {
          "uid": "q444T6uV7W8",
          "name": "previousBalance",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "options": [],
          "label": {
            "en": "Balance from Pre.Month",
            "ar": "رصيد من الشهر السابق"
          }
        },
        {
          "uid": "vW5554zA5B6",
          "name": "newSupply",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "options": [],
          "label": {"en": "New Supply", "ar": "تموين جديد"}
        },
        {
          "uid": "jK1l666O3P4",
          "name": "consumed",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "options": [],
          "label": {
            "en": "Consumed during this month",
            "ar": "مستخدم خلال الشهر"
          }
        },
        {
          "uid": "999zA0bC1D2",
          "name": "lostCorrupt",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "options": [],
          "label": {"en": "Corrupt or Lost", "ar": "تالف أو مفقود"}
        },
        {
          "uid": "eF3334iJ5K6",
          "name": "remaining",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "options": [],
          "label": {"en": "Remaining", "ar": "متبقي نهاية الشهر"}
        },
        {
          "uid": "xBCEEDbC1D2",
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "rules": [],
          "options": [],
          "label": {"en": "Comments", "ar": "ملاحظات وتعليقات إن وجدت"}
        }
      ],
      "mainFields": [
        {
          "uid": "cD33F8gH9I0",
          "name": "item",
          "description": "Supplay Item",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "listName": "drugsTypes",
          "rules": [],
          "options": [
            {
              "uid": "5YEF80dC5D1",
              "listName": "drugsTypes",
              "name": "MRDT",
              "description": null,
              "label": {"en": "Malaria RDT", "ar": "اشرطة الفحص السريع"}
            },
            {
              "uid": "xBCD10bC1D2",
              "listName": "drugsTypes",
              "name": "MDrugs",
              "description": null,
              "label": {"en": "Malaria Drugs", "ar": "أدوية الملاريا"}
            },
            {
              "uid": "xBCDDDbC1D2",
              "listName": "drugsTypes",
              "name": "ARTSUPP",
              "description": null,
              "label": {"en": "ArtisunatSupp", "ar": "تحاميل أرتيسونات"}
            }
          ],
          "label": {"en": "Supplay Item", "ar": "نوع العلاج"}
        }
      ],
      "activity": "oBne891mA9n",
      "defaultLocal": "ar",
      "version": 4,
      "label": {
        "en": "Malaria Supply Data",
        "ar": "استخدام الادوية والفحص السريع"
      }
    }
  ]
};
