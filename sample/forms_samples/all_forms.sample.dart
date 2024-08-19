final Map<String, dynamic> dSampleAllForms = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 4,
  "pageSize": 20,
  "dataForms": [
    {
      "createdBy": "57212",
      "createdDate": "2024-08-10T21:00:03.457Z",
      "lastModifiedBy": "57212",
      "lastModifiedDate": "2024-08-10T21:00:03.457Z",
      "id": "66b7d4d39b38ab75b4614b43",
      "uid": "KqNC99jcuzQ",
      "code": "HFMSR",
      "name": "التقرير الشهري للمرافق الصحية",
      "description": "Health Facility Monthly Stock Report",
      "disabled": false,
      "activity": "U42up6b3mbG",
      "version": 2,
      "defaultLocal": "en",
      "fields": [
        {
          "uid": "hCrOpS7EFPn",
          "code": null,
          "name": "stockItem",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "amdtypes",
          "label": {"en": "Stock Item", "ar": "الصنف"}
        },
        {
          "uid": "iEA6iJdQUJ8",
          "code": null,
          "name": "reportMonth",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Report Month", "ar": "الشهر"}
        },
        {
          "uid": "AMpSRxuug7w",
          "code": null,
          "name": "startOfMonthQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Start Of Month Quantity",
            "ar": "الرصيد بداية الشهر الحالي"
          }
        },
        {
          "uid": "fEBdmrB54gb",
          "code": null,
          "name": "receivedQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Quantity received this month",
            "ar": "الكمية المستلمة خلال الشهر"
          }
        },
        {
          "uid": "Wg3tUd64EHc",
          "code": null,
          "name": "consumedQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Quantity consumed", "ar": "الاستهلاك للشهر الحالي"}
        },
        {
          "uid": "NokdPawIDWd",
          "code": null,
          "name": "lastSupplyDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Last supply date", "ar": "تاريخ اخر عمليةامداد"}
        },
        {
          "uid": "vARZDwXniJ1",
          "code": null,
          "name": "deliveredToCHVQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Quantity Delivered To CHV",
            "ar": "الكمية المسلمة لمتطوعه"
          }
        },
        {
          "uid": "lsTykJdCA0B",
          "code": null,
          "name": "redistributedQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Redistributed Quantity",
            "ar": "الكمية المسلمة لمرفق اخر"
          }
        },
        {
          "uid": "EEaQWYmZj0e",
          "code": null,
          "name": "expiredQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Expired Quantity", "ar": "الكمية المنتهية"}
        },
        {
          "uid": "c6s45IJiq8s",
          "code": null,
          "name": "endOfMonthQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {
            "en": "End Of Month Quantity",
            "ar": "الكمية المتوفرة نهاية الشهر"
          }
        },
        {
          "uid": "b6p51GmpysB",
          "code": null,
          "name": "expiryDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Expiry date", "ar": "تاريخ صلاحية الكمية المتوفرة"}
        },
        {
          "uid": "vlx9IBSIJt1",
          "code": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": false,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "comment", "ar": "ملاحظات"}
        },
        {
          "uid": "nwp4Aprs3EN",
          "code": null,
          "name": "stockoutDays",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Stockout days", "ar": "فترة انقطاع الصنف بالايام"}
        }
      ],
      "options": [
        {
          "uid": "Dnui1SZMN2J",
          "form": null,
          "listName": "amdtypes",
          "name": "MRDT",
          "description": null,
          "order": null,
          "label": {
            "en": "Malaria Rapid Diagnostic Test",
            "ar": "الفحص السريع للملاريا بالشريط"
          }
        },
        {
          "uid": "uSPSsigQDE0",
          "form": null,
          "listName": "amdtypes",
          "name": "ACT20",
          "description": null,
          "order": null,
          "label": {"en": "Coartem 20 mg", "ar": "كوارتم_20"}
        },
        {
          "uid": "JgZo2ii9kg5",
          "form": null,
          "listName": "amdtypes",
          "name": "ACT40",
          "description": null,
          "order": null,
          "label": {"en": "Coartem 40 mg", "ar": "كوارتم_40"}
        },
        {
          "uid": "k0yxKoKTXK0",
          "form": null,
          "listName": "amdtypes",
          "name": "ACT60",
          "description": null,
          "order": null,
          "label": {"en": "Coartem 60 mg", "ar": "كوارتم_60"}
        },
        {
          "uid": "F3JoOvUc3sV",
          "form": null,
          "listName": "amdtypes",
          "name": "ACT80",
          "description": null,
          "order": null,
          "label": {"en": "Coartem 80 mg", "ar": "كوارتم_80"}
        },
        {
          "uid": "IwUG1WYm1iY",
          "form": null,
          "listName": "amdtypes",
          "name": "ARTINJ",
          "description": null,
          "order": null,
          "label": {
            "en": "Artesunate injection 60 mg ampoule",
            "ar": "ارتيسونات 60 مجم امبول"
          }
        },
        {
          "uid": "d1pnJjL6jCD",
          "form": null,
          "listName": "amdtypes",
          "name": "DRDT",
          "description": null,
          "order": null,
          "label": {
            "en": "Dengue Rapid Diagnostic Test",
            "ar": "الفحص السريع للضنك بالشريط"
          }
        },
        {
          "uid": "lQfMDgPMhFr",
          "form": null,
          "listName": "amdtypes",
          "name": "PMQ7.5MG",
          "description": null,
          "order": null,
          "label": {
            "en": "Primaquine 7.5 mg tape",
            "ar": "بريماكوين 7.5 مجم بالشريط"
          }
        },
        {
          "uid": "MMp1avIX2ec",
          "form": null,
          "listName": "amdtypes",
          "name": "PMQ15MG",
          "description": null,
          "order": null,
          "label": {
            "en": "Primaquine 15 mg tape",
            "ar": "بريماكوين 15 مجم بالشريط"
          }
        }
      ],
      "orgUnits": ["awgKZaDoWLA", "yZCm1nwslVu", "UW2up6bUmbG"],
      "label": {
        "en": "Health Facility Monthly Stock Report",
        "ar": "التقرير الشهري للمرافق الصحية"
      },
      "displayName": "التقرير الشهري للمرافق الصحية"
    },
    {
      "createdBy": "admin",
      "createdDate": "2024-08-05T02:37:40.535Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-05T02:37:40.535Z",
      "id": "66b03af41327d612461a6aac",
      "uid": "KcsA3KETRbY",
      "code": "CHV_PATIENTS_FORM",
      "name": "استمارة تدبير حالات الملاريا",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 9,
      "defaultLocal": null,
      "fields": [
        {
          "uid": "qR5sT6uV7W8",
          "code": null,
          "name": "locationName",
          "description": null,
          "type": "Text",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Village Name", "ar": "اسم القرية"}
        },
        {
          "uid": "cD7eF8gH9I0",
          "code": null,
          "name": "name",
          "description": "Name of the patient",
          "type": "Text",
          "mandatory": true,
          "mainField": true,
          "rules": [
            {
              "uid": "eF6676iJ5K6",
              "field": "name",
              "expression": "name.length >= 9",
              "action": "Error",
              "message": {
                "en": "Name is not complete",
                "ar": "ادخل الاسم الرباعي"
              },
              "filterInfo": null
            }
          ],
          "listName": null,
          "label": {"en": "Patient name", "ar": "اسم المريض"}
        },
        {
          "uid": "vW3xY4zA5B6",
          "code": null,
          "name": "visitDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "Visit Date", "ar": "تاريخ الزيارة"}
        },
        {
          "uid": "jK1lM2nO3P4",
          "code": null,
          "name": "age",
          "description": "Age in Years and (months for age less than 1 year)",
          "type": "Age",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "uid": "eF66H6iJ5K6",
              "field": "age",
              "expression": "age <= 0 || age > 100",
              "action": "Error",
              "message": {
                "en": "Age is greater than normal",
                "ar": "العمر كبير جدا تأكد"
              },
              "filterInfo": null
            }
          ],
          "listName": null,
          "label": {"en": "Age", "ar": "العمر"}
        },
        {
          "uid": "xY9zA0bC1D2",
          "code": null,
          "name": "gender",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "genders",
          "label": {"en": "Gender", "ar": "الجنس"}
        },
        {
          "uid": "eF3gH4iJ5K6",
          "code": null,
          "name": "pregnant",
          "description": null,
          "type": "Boolean",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "uid": "eF5gH6iJ5K6",
              "field": "pregnant",
              "expression": "gender == 'FEMALE' && age >= 14",
              "action": "Show",
              "message": null,
              "filterInfo": null
            }
          ],
          "listName": null,
          "label": {"en": "Is pregnant?", "ar": "هل هي حامل؟"}
        },
        {
          "uid": "lM7nO8pQ9R0",
          "code": null,
          "name": "testResult",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "testResults",
          "label": {"en": "Test Result", "ar": "نتيجة الفحص"}
        },
        {
          "uid": "z33bC6dE7F8",
          "code": null,
          "name": "detectionType",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "uid": "eF3gH8iJ5K9",
              "field": "detectionType",
              "expression":
                  "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": null,
              "filterInfo": null
            }
          ],
          "listName": "detectionTypes",
          "label": {"en": "Detection Type", "ar": "نوع الاكتشاف"}
        },
        {
          "uid": "zA5bDDdE7F8",
          "code": null,
          "name": "severity",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "uid": "eF9gH8iJ5K9",
              "field": "severity",
              "expression":
                  "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": null,
              "filterInfo": null
            }
          ],
          "listName": "severities",
          "label": {"en": "Severity", "ar": "تصنيف الحالة"}
        },
        {
          "uid": "gH9iJ0kL1M2",
          "code": null,
          "name": "treatment",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "uid": "gH99J1kL1M2",
              "field": "treatment",
              "expression":
                  "pregnant && (testResult == 'PF' || testResult == 'PV' || testResult == 'MIX')",
              "action": "Filter",
              "message": null,
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": [
                  "TREATED",
                  "FIRST_DOSE",
                  "FIRST_DOSE_REFERRAL"
                ],
                "optionsToShow": null
              }
            },
            {
              "uid": "gH1011kL1M2",
              "field": "treatment",
              "expression": "severity == 'SEVERE'",
              "action": "Filter",
              "message": null,
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": null,
                "optionsToShow": ["FIRST_DOSE_REFERRAL", "REFERRAL"]
              }
            },
            {
              "uid": "gH10J1kL1M2",
              "field": "treatment",
              "expression":
                  "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": null,
              "filterInfo": null
            }
          ],
          "listName": "treatments",
          "label": {"en": "Treatment", "ar": "تدبير الحالة"}
        },
        {
          "uid": "nO3pQ4rS5T6",
          "code": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "Comments", "ar": "ملاحظات وتعليقات"}
        }
      ],
      "options": [
        {
          "uid": "xY1200bC1D2",
          "form": null,
          "listName": "genders",
          "name": "FEMALE",
          "description": null,
          "order": 0,
          "label": {"en": "Female", "ar": "أنثى"}
        },
        {
          "uid": "5Y1200dC5D1",
          "form": null,
          "listName": "genders",
          "name": "MALE",
          "description": null,
          "order": 0,
          "label": {"en": "Male", "ar": "ذكر"}
        },
        {
          "uid": "688888BC7D1",
          "form": null,
          "listName": "testResults",
          "name": "INVALID",
          "description": null,
          "order": 0,
          "label": {"en": "Invalid", "ar": "غير صالح"}
        },
        {
          "uid": "6Y1288dC5D1",
          "form": null,
          "listName": "testResults",
          "name": "NEGATIVE",
          "description": null,
          "order": 0,
          "label": {"en": "Negative", "ar": "سلبي"}
        },
        {
          "uid": "6Y3338dC5D1",
          "form": null,
          "listName": "testResults",
          "name": "PF",
          "description": null,
          "order": 0,
          "label": {
            "en": "Plasmodium falciparum",
            "ar": "بلاسموديوم فالسيباروم"
          }
        },
        {
          "uid": "10CDF77C7D1",
          "form": null,
          "listName": "detectionTypes",
          "name": "ACTIVE",
          "description": null,
          "order": 0,
          "label": {"en": "Active", "ar": "بحث نشط"}
        },
        {
          "uid": "555288dC5D1",
          "form": null,
          "listName": "testResults",
          "name": "PV",
          "description": null,
          "order": 0,
          "label": {"en": "Plasmodium vivax", "ar": "بلاسموديوم فيفاكس"}
        },
        {
          "uid": "1CD8FEBC7D1",
          "form": null,
          "listName": "treatments",
          "name": "TREATED",
          "description": null,
          "order": 0,
          "label": {"en": "Treated", "ar": "معالج"}
        },
        {
          "uid": "10CDF8BC7D1",
          "form": null,
          "listName": "severities",
          "name": "SEVERE",
          "description": null,
          "order": 0,
          "label": {"en": "Severe", "ar": "وخيمة"}
        },
        {
          "uid": "9CC8F8BC7D1",
          "form": null,
          "listName": "severities",
          "name": "SIMPLE",
          "description": null,
          "order": 0,
          "label": {"en": "Simple", "ar": "بسيطة"}
        },
        {
          "uid": "666288dC5D1",
          "form": null,
          "listName": "testResults",
          "name": "MIX",
          "description": null,
          "order": 0,
          "label": {"en": "Mixed", "ar": "مختلط"}
        },
        {
          "uid": "9CC8F66C7D1",
          "form": null,
          "listName": "detectionTypes",
          "name": "REACTIVE",
          "description": null,
          "order": 0,
          "label": {"en": "Reactive", "ar": "زيارة روتينية"}
        },
        {
          "uid": "ECDYFEBC8D1",
          "form": null,
          "listName": "treatments",
          "name": "FIRST_DOSE",
          "description": null,
          "order": 0,
          "label": {"en": "First Dose", "ar": "الجرعة الأولى"}
        },
        {
          "uid": "ECDYF9628D1",
          "form": null,
          "listName": "treatments",
          "name": "FIRST_DOSE_REFERRAL",
          "description": null,
          "order": 0,
          "label": {"en": "First Dose & Referral", "ar": "الجرعة الأولى وإحالة"}
        },
        {
          "uid": "9RD8FEFC7D0",
          "form": null,
          "listName": "treatments",
          "name": "REFERRAL",
          "description": null,
          "order": 0,
          "label": {"en": "Referral", "ar": "إحالة"}
        }
      ],
      "orgUnits": ["awgKZaDoWLA", "yZCm1nwslVu", "UW2up6bUmbG"],
      "label": {"en": "chv cases register", "ar": "تسجيل حالات chv"},
      "displayName": "استمارة تدبير حالات الملاريا"
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-05T02:38:59.349Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-05T02:38:59.367Z",
      "id": "66a6ca5ba9d1d71440b4ec6a",
      "uid": "RQlMiMcukid",
      "code": "CHV_SESSIONS_FORM",
      "name": "جلسات التثقيف المجتمعي",
      "description": null,
      "disabled": null,
      "activity": "oBne891mA9n",
      "version": 6,
      "defaultLocal": null,
      "fields": [
        {
          "uid": "oBne999mA9n",
          "code": null,
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "label": {"en": "Date", "ar": "التاريخ"}
        },
        {
          "uid": "o199339mA9n",
          "code": null,
          "name": "peopleItns",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Number of Beneficiaries ITNs",
            "ar": "عدد المستفيدين ناموسيات"
          }
        },
        {
          "uid": "o199339mA9n",
          "code": null,
          "name": "peopleBreadingSites",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Number of Beneficiaries BreadingSite",
            "ar": "عدد المستفيدين مواقع توالد"
          }
        },
        {
          "uid": "o199339mA9n",
          "code": null,
          "name": "peopleTransmissionPrevention",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Number of Beneficiaries",
            "ar": "عدد المستفيدين الوقاية من الانتقال"
          }
        }
      ],
      "options": [
        {
          "uid": "oBne669mA9n",
          "form": null,
          "listName": "sessionTypes",
          "name": "ITNs",
          "description": null,
          "order": null,
          "label": {"en": "ITNs", "ar": "النموسيات المعالجة"}
        },
        {
          "uid": "oBne889mA9n",
          "form": null,
          "listName": "sessionTypes",
          "name": "BreadingSite",
          "description": null,
          "order": null,
          "label": {"en": "Breading Site", "ar": "مواقع التوالد"}
        },
        {
          "uid": "oBne111mA9n",
          "form": null,
          "listName": "sessionTypes",
          "name": "Transmission_Prevention",
          "description": null,
          "order": null,
          "label": {
            "en": "Transmission Prevention",
            "ar": "الوقاية من الانتقال"
          }
        }
      ],
      "orgUnits": [],
      "label": {
        "en": "Community Awareness Sessions",
        "ar": "جلسات التثقيف المجتمعي"
      },
      "displayName": "جلسات التثقيف المجتمعي"
    },
    {
      "createdBy": "admin",
      "createdDate": "2024-08-05T02:39:18.743Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-05T02:39:18.743Z",
      "id": "66b03b561327d612461a6aad",
      "uid": "zglED4TsbTh",
      "code": "CHV_SUPPLY_FORM",
      "name": "استخدام الادوية والفحص السريع",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 7,
      "defaultLocal": null,
      "fields": [
        {
          "uid": "cD33F8gH9I0",
          "code": null,
          "name": "item",
          "description": "Name of the patient",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": "drugsTypes",
          "label": {"en": "Supplay Item", "ar": "نوع العلاج"}
        },
        {
          "uid": "q444T6uV7W8",
          "code": null,
          "name": "previousBalance",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Balance from Pre.Month",
            "ar": "رصيد من الشهر السابق"
          }
        },
        {
          "uid": "vW5554zA5B6",
          "code": null,
          "name": "newSupply",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "New Supply", "ar": "تموين جديد"}
        },
        {
          "uid": "jK1l666O3P4",
          "code": null,
          "name": "consumed",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {
            "en": "Consumed during this month",
            "ar": "مستخدم خلال الشهر"
          }
        },
        {
          "uid": "999zA0bC1D2",
          "code": null,
          "name": "lostCorrupt",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "Corrupt or Lost", "ar": "تالف أو مفقود"}
        },
        {
          "uid": "eF3334iJ5K6",
          "code": null,
          "name": "remaining",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "Remaining", "ar": "متبقي نهاية الشهر"}
        },
        {
          "uid": "xBCEEDbC1D2",
          "code": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "rules": [],
          "listName": null,
          "label": {"en": "Comments", "ar": "ملاحظات وتعليقات إن وجدت"}
        }
      ],
      "options": [
        {
          "uid": "5YEF80dC5D1",
          "form": null,
          "listName": "drugsTypes",
          "name": "MRDT",
          "description": null,
          "order": null,
          "label": {"en": "Malaria RDT", "ar": "اشرطة الفحص السريع"}
        },
        {
          "uid": "xBCD10bC1D2",
          "form": null,
          "listName": "drugsTypes",
          "name": "MDrugs",
          "description": null,
          "order": null,
          "label": {"en": "Malaria Drugs", "ar": "أدوية الملاريا"}
        },
        {
          "uid": "xBCDDDbC1D2",
          "form": null,
          "listName": "drugsTypes",
          "name": "ARTSUPP",
          "description": null,
          "order": null,
          "label": {"en": "ArtisunatSupp", "ar": "تحاميل أرتيسونات"}
        }
      ],
      "orgUnits": [
        "awgKZaDoWLA",
        "yZCm1nwslVu",
        "UW2up6bUmbG"
      ],
      "label": {
        "en": "Malaria Supply Data",
        "ar": "استخدام الادوية والفحص السريع"
      },
      "displayName": "استخدام الادوية والفحص السريع"
    }
  ]
};
