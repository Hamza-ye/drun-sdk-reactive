final Map<String, dynamic> dSampleAllForms = {
  "paging": false,
  "page": 0,
  "pageCount": 1,
  "total": 6,
  "pageSize": 6,
  "dataForms": [
    {
      "createdBy": null,
      "createdDate": "2024-08-24T02:21:52.303Z",
      "lastModifiedBy": "62099",
      "lastModifiedDate": "2024-08-24T02:21:52.589Z",
      "id": "66a6ca5ba9d1d71440b4ec6a",
      "uid": "RQlMiMcukid",
      "code": "CHV_SESSIONS_FORM",
      "name": "جلسات التثقيف المجتمعي",
      "description": null,
      "disabled": null,
      "activity": "oBne891mA9n",
      "version": 7,
      "defaultLocal": "en",
      "fields": [
        {
          "order": null,
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Date",
            "ar": "التاريخ"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "peopleItns",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Number of Beneficiaries ITNs",
            "ar": "عدد المستفيدين ناموسيات"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "peopleBreadingSites",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Number of Beneficiaries BreadingSite",
            "ar": "عدد المستفيدين مواقع توالد"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "peopleTransmissionPrevention",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Number of Beneficiaries",
            "ar": "عدد المستفيدين الوقاية من الانتقال"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        }
      ],
      "options": [
        {
          "listName": "sessionTypes",
          "name": "ITNs",
          "order": 0,
          "label": {
            "en": "ITNs",
            "ar": "النموسيات المعالجة"
          },
          "properties": {}
        },
        {
          "listName": "sessionTypes",
          "name": "BreadingSite",
          "order": 0,
          "label": {
            "en": "Breading Site",
            "ar": "مواقع التوالد"
          },
          "properties": {}
        },
        {
          "listName": "sessionTypes",
          "name": "Transmission_Prevention",
          "order": 0,
          "label": {
            "en": "Transmission Prevention",
            "ar": "الوقاية من الانتقال"
          },
          "properties": {}
        }
      ],
      "orgUnits": [
        "awgKZaDoWLA",
        "UW2up6bUmbG"
      ],
      "label": {
        "en": "Community Awareness Sessions",
        "ar": "جلسات التثقيف المجتمعي"
      },
      "formInstances": [],
      "displayName": "جلسات التثقيف المجتمعي",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-24T02:21:52.306Z",
      "lastModifiedBy": "62099",
      "lastModifiedDate": "2024-08-24T02:21:52.908Z",
      "id": "66b03b561327d612461a6aad",
      "uid": "zglED4TsbTh",
      "code": "CHV_SUPPLY_FORM",
      "name": "استخدام الادوية والفحص السريع",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 8,
      "defaultLocal": "en",
      "fields": [
        {
          "order": null,
          "name": "item",
          "description": "Name of the patient",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": "drugsTypes",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Supplay Item",
            "ar": "نوع العلاج"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "previousBalance",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Balance from Pre.Month",
            "ar": "رصيد من الشهر السابق"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "newSupply",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "New Supply",
            "ar": "تموين جديد"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "consumed",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Consumed during this month",
            "ar": "مستخدم خلال الشهر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "lostCorrupt",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Corrupt or Lost",
            "ar": "تالف أو مفقود"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "remaining",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Remaining",
            "ar": "متبقي نهاية الشهر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Comments",
            "ar": "ملاحظات وتعليقات إن وجدت"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        }
      ],
      "options": [
        {
          "listName": "drugsTypes",
          "name": "MRDT",
          "order": 0,
          "label": {
            "en": "Malaria RDT",
            "ar": "اشرطة الفحص السريع"
          },
          "properties": {}
        },
        {
          "listName": "drugsTypes",
          "name": "MDrugs",
          "order": 0,
          "label": {
            "en": "Malaria Drugs",
            "ar": "أدوية الملاريا"
          },
          "properties": {}
        },
        {
          "listName": "drugsTypes",
          "name": "ARTSUPP",
          "order": 0,
          "label": {
            "en": "ArtisunatSupp",
            "ar": "تحاميل أرتيسونات"
          },
          "properties": {}
        }
      ],
      "orgUnits": [
        "awgKZaDoWLA",
        "UW2up6bUmbG"
      ],
      "label": {
        "en": "Malaria Supply Data",
        "ar": "استخدام الادوية والفحص السريع"
      },
      "formInstances": [],
      "displayName": "استخدام الادوية والفحص السريع",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-25T13:41:25.557Z",
      "lastModifiedBy": "62099",
      "lastModifiedDate": "2024-08-25T13:41:25.899Z",
      "id": "66ca3d066ce8a30565e03599",
      "uid": "KcsA3KETRbY",
      "code": "CHV_PATIENTS_FORM",
      "name": "استمارة تدبير حالات الملاريا",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 12,
      "defaultLocal": "en",
      "fields": [
        {
          "order": null,
          "name": "name",
          "description": "Name of the patient",
          "type": "FullName",
          "mandatory": true,
          "mainField": true,
          "rules": [
            {
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
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Patient name",
            "ar": "اسم المريض"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "visitDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Visit Date",
            "ar": "تاريخ الزيارة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "age",
          "description": "Age in Years and (months for age less than 1 year)",
          "type": "Age",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
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
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Age",
            "ar": "العمر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "gender",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "genders",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Gender",
            "ar": "الجنس"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "pregnant",
          "description": null,
          "type": "Boolean",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "gender == 'FEMALE' && age >= 14",
              "action": "Show",
              "message": {
                "en": "Error"
              },
              "filterInfo": null
            }
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Is pregnant?",
            "ar": "هل هي حامل؟"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "testResult",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "testResults",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Test Result",
            "ar": "نتيجة الفحص"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "detectionType",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": {
                "en": "Error"
              },
              "filterInfo": null
            }
          ],
          "listName": "detectionTypes",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Detection Type",
            "ar": "نوع الاكتشاف"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "severity",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": {
                "en": "Error"
              },
              "filterInfo": null
            }
          ],
          "listName": "severities",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Severity",
            "ar": "تصنيف الحالة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "treatment",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "severity == 'SEVERE'",
              "action": "Filter",
              "message": {
                "en": "Error"
              },
              "filterInfo": {
                "optionsToHide": null,
                "optionsToShow": [
                  "FIRST_DOSE_REFERRAL",
                  "REFERRAL"
                ]
              }
            },
            {
              "expression": "pregnant && (testResult == 'PF' || testResult == 'PV' || testResult == 'MIX')",
              "action": "Filter",
              "message": {
                "en": "Error"
              },
              "filterInfo": {
                "optionsToHide": null,
                "optionsToShow": [
                  "REFERRAL"
                ]
              }
            },
            {
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": {
                "en": "Error"
              },
              "filterInfo": null
            }
          ],
          "listName": "treatments",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Treatment",
            "ar": "تدبير الحالة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Comments",
            "ar": "ملاحظات وتعليقات"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        }
      ],
      "options": [
        {
          "listName": "testResults",
          "name": "INVALID",
          "order": 0,
          "label": {
            "ar": "غير صالح",
            "en": "Invalid"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "genders",
          "name": "MALE",
          "order": 0,
          "label": {
            "ar": "ذكر",
            "en": "Male"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "genders",
          "name": "FEMALE",
          "order": 0,
          "label": {
            "ar": "أنثى",
            "en": "Female"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "testResults",
          "name": "NEGATIVE",
          "order": 0,
          "label": {
            "ar": "سلبي",
            "en": "Negative"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "testResults",
          "name": "PF",
          "order": 0,
          "label": {
            "ar": "بلاسموديوم فالسيباروم",
            "en": "Plasmodium falciparum"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "testResults",
          "name": "MIX",
          "order": 0,
          "label": {
            "ar": "مختلط",
            "en": "Mixed"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "severities",
          "name": "SEVERE",
          "order": 0,
          "label": {
            "ar": "وخيمة",
            "en": "Severe"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "detectionTypes",
          "name": "ACTIVE",
          "order": 0,
          "label": {
            "ar": "بحث نشط",
            "en": "Active"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "detectionTypes",
          "name": "REACTIVE",
          "order": 0,
          "label": {
            "ar": "زيارة روتينية",
            "en": "Reactive"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "treatments",
          "name": "FIRST_DOSE",
          "order": 0,
          "label": {
            "ar": "الجرعة الأولى",
            "en": "First Dose"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "severities",
          "name": "SIMPLE",
          "order": 0,
          "label": {
            "ar": "بسيطة",
            "en": "Simple"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "treatments",
          "name": "REFERRAL",
          "order": 0,
          "label": {
            "ar": "إحالة",
            "en": "Referral"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "testResults",
          "name": "PV",
          "order": 0,
          "label": {
            "ar": "بلاسموديوم فيفاكس",
            "en": "Plasmodium vivax"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "treatments",
          "name": "FIRST_DOSE_REFERRAL",
          "order": 0,
          "label": {
            "ar": "الجرعة الأولى وإحالة",
            "en": "First Dose & Referral"
          },
          "properties": {
            "properties": "{}"
          }
        },
        {
          "listName": "treatments",
          "name": "TREATED",
          "order": 0,
          "label": {
            "ar": "معالج",
            "en": "Treated"
          },
          "properties": {
            "properties": "{}"
          }
        }
      ],
      "orgUnits": [
        "awgKZaDoWLA",
        "UW2up6bUmbG"
      ],
      "label": {
        "en": "chv cases register",
        "ar": "تسجيل حالات chv"
      },
      "formInstances": [],
      "displayName": "استمارة تدبير حالات الملاريا",
      "translations": []
    },
    {
      "createdBy": "62099",
      "createdDate": "2024-08-24T20:40:51.723Z",
      "lastModifiedBy": "62099",
      "lastModifiedDate": "2024-08-24T20:40:51.723Z",
      "id": "66ca45535cb4e10a1b88dffd",
      "uid": "Kcs3346CRbY",
      "code": "TEST_FORM",
      "name": "test form",
      "description": "Test Countries Form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 2,
      "defaultLocal": "en",
      "fields": [
        {
          "order": null,
          "name": "continentQ",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": "continents",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Continent",
            "ar": "القارة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "countryQ",
          "description": "Country",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": "countries",
          "referenceInfo": null,
          "choiceFilter": "continentFilter == continentQ",
          "label": {
            "en": "Country",
            "ar": "الدولة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "cityQ",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "cities",
          "referenceInfo": null,
          "choiceFilter": "countryFilter == countryQ",
          "label": {
            "en": "City",
            "ar": "المدينة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        }
      ],
      "options": [
        {
          "listName": "continents",
          "name": "as",
          "order": 2,
          "label": {
            "ar": "آسيا",
            "en": "Asia"
          },
          "properties": {}
        },
        {
          "listName": "continents",
          "name": "na",
          "order": 0,
          "label": {
            "ar": "أمرسكا الشمالية",
            "en": "North America"
          },
          "properties": {}
        },
        {
          "listName": "continents",
          "name": "eu",
          "order": 1,
          "label": {
            "ar": "أوروبا",
            "en": "Europe"
          },
          "properties": {}
        },
        {
          "listName": "countries",
          "name": "us",
          "order": 0,
          "label": {
            "ar": "الولايات المتحدة",
            "en": "United States"
          },
          "properties": {
            "continentFilter": "na"
          }
        },
        {
          "listName": "cities",
          "name": "pa",
          "order": 3,
          "label": {
            "ar": "باريس",
            "en": "Paris"
          },
          "properties": {
            "countryFilter": "fr",
            "anotherFilter": "anotherValue2"
          }
        },
        {
          "listName": "cities",
          "name": "mu",
          "order": 6,
          "label": {
            "ar": "مومباي",
            "en": "Mumbai"
          },
          "properties": {
            "countryFilter": "in",
            "anotherFilter": "null"
          }
        },
        {
          "listName": "countries",
          "name": "ca",
          "order": 1,
          "label": {
            "ar": "كندا",
            "en": "Canada"
          },
          "properties": {
            "continentFilter": "na"
          }
        },
        {
          "listName": "cities",
          "name": "sh",
          "order": 5,
          "label": {
            "ar": "شنغهاي",
            "en": "Shanghai"
          },
          "properties": {
            "countryFilter": "cn",
            "anotherFilter": "null"
          }
        },
        {
          "listName": "cities",
          "name": "to",
          "order": 2,
          "label": {
            "ar": "تورونتو",
            "en": "Toronto"
          },
          "properties": {
            "countryFilter": "ca",
            "anotherFilter": "anotherValue2"
          }
        },
        {
          "listName": "countries",
          "name": "fr",
          "order": 2,
          "label": {
            "ar": "فرنسا",
            "en": "France"
          },
          "properties": {
            "continentFilter": "eu"
          }
        },
        {
          "listName": "countries",
          "name": "de",
          "order": 3,
          "label": {
            "ar": "ألمانيا",
            "en": "Germany"
          },
          "properties": {
            "continentFilter": "eu"
          }
        },
        {
          "listName": "countries",
          "name": "cn",
          "order": 4,
          "label": {
            "ar": "الصين",
            "en": "China"
          },
          "properties": {
            "continentFilter": "as"
          }
        },
        {
          "listName": "cities",
          "name": "be",
          "order": 4,
          "label": {
            "ar": "برلين",
            "en": "Berlin"
          },
          "properties": {
            "countryFilter": "de",
            "anotherFilter": "null"
          }
        },
        {
          "listName": "countries",
          "name": "in",
          "order": 5,
          "label": {
            "ar": "الهند",
            "en": "India"
          },
          "properties": {
            "continentFilter": "as"
          }
        },
        {
          "listName": "cities",
          "name": "ny",
          "order": 0,
          "label": {
            "ar": "نيويورك",
            "en": "New York"
          },
          "properties": {
            "countryFilter": "us",
            "anotherFilter": "anotherValue1"
          }
        },
        {
          "listName": "cities",
          "name": "la",
          "order": 1,
          "label": {
            "ar": "لوس أنجلوس",
            "en": "Los Angeles"
          },
          "properties": {
            "countryFilter": "us",
            "anotherFilter": "anotherValue1"
          }
        }
      ],
      "orgUnits": [
        "awgKZaDoWLA",
        "UW2up6bUmbG"
      ],
      "label": {
        "en": "Test form",
        "ar": "استمارة تجريبية"
      },
      "formInstances": [],
      "displayName": "test form",
      "translations": []
    },
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
      "version": 3,
      "defaultLocal": "en",
      "fields": [
        {
          "order": null,
          "name": "stockItem",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "amdtypes",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Stock Item",
            "ar": "الصنف"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "reportMonth",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Report Month",
            "ar": "الشهر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "startOfMonthQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Start Of Month Quantity",
            "ar": "الرصيد بداية الشهر الحالي"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "receivedQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Quantity received this month",
            "ar": "الكمية المستلمة خلال الشهر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "consumedQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Quantity consumed",
            "ar": "الاستهلاك للشهر الحالي"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "lastSupplyDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Last supply date",
            "ar": "تاريخ اخر عمليةامداد"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "deliveredToCHVQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Quantity Delivered To CHV",
            "ar": "الكمية المسلمة لمتطوعه"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "redistributedQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Redistributed Quantity",
            "ar": "الكمية المسلمة لمرفق اخر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "expiredQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Expired Quantity",
            "ar": "الكمية المنتهية"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "endOfMonthQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "End Of Month Quantity",
            "ar": "الكمية المتوفرة نهاية الشهر"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "expiryDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Expiry date",
            "ar": "تاريخ صلاحية الكمية المتوفرة"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": null,
          "name": "stockoutDays",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Stockout days",
            "ar": "فترة انقطاع الصنف بالايام"
          },
          "fields": [],
          "calculation": null,
          "defaultValue": null
        }
      ],
      "options": [
        {
          "listName": "amdtypes",
          "name": "MRDT",
          "order": null,
          "label": {
            "en": "Malaria Rapid Diagnostic Test",
            "ar": "الفحص السريع للملاريا بالشريط"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT20",
          "order": null,
          "label": {
            "en": "Coartem 20 mg",
            "ar": "كوارتم_20"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT40",
          "order": null,
          "label": {
            "en": "Coartem 40 mg",
            "ar": "كوارتم_40"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT60",
          "order": null,
          "label": {
            "en": "Coartem 60 mg",
            "ar": "كوارتم_60"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT80",
          "order": null,
          "label": {
            "en": "Coartem 80 mg",
            "ar": "كوارتم_80"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ARTINJ",
          "order": null,
          "label": {
            "en": "Artesunate injection 60 mg ampoule",
            "ar": "ارتيسونات 60 مجم امبول"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "DRDT",
          "order": null,
          "label": {
            "en": "Dengue Rapid Diagnostic Test",
            "ar": "الفحص السريع للضنك بالشريط"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "PMQ7.5MG",
          "order": null,
          "label": {
            "en": "Primaquine 7.5 mg tape",
            "ar": "بريماكوين 7.5 مجم بالشريط"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "PMQ15MG",
          "order": null,
          "label": {
            "en": "Primaquine 15 mg tape",
            "ar": "بريماكوين 15 مجم بالشريط"
          },
          "properties": {}
        }
      ],
      "orgUnits": [
        "YCEyRUYxMTo"
      ],
      "label": {
        "en": "Health Facility Monthly Stock Report",
        "ar": "التقرير الشهري للمرافق الصحية"
      },
      "formInstances": [],
      "displayName": "التقرير الشهري للمرافق الصحية",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-29T05:05:02.196Z",
      "lastModifiedBy": "62099",
      "lastModifiedDate": "2024-08-29T05:05:02.835Z",
      "id": "66cfb1604ece1975029b7797",
      "uid": "bo9rJr1TNg1",
      "code": null,
      "name": "bookkeeping",
      "description": null,
      "disabled": false,
      "activity": "U42up6b3mbG",
      "version": 4,
      "defaultLocal": "en",
      "fields": [
        {
          "order": 1,
          "name": "mainSection",
          "description": null,
          "type": "Section",
          "mandatory": null,
          "mainField": null,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Main Info",
            "ar": "بيانات الحركة"
          },
          "fields": [
            {
              "order": 1,
              "name": "transaction",
              "description": null,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": true,
              "rules": [],
              "listName": "transactions",
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "transactions",
                "ar": "نوع الحركة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 2,
              "name": "transactionDate",
              "description": null,
              "type": "Date",
              "mandatory": true,
              "mainField": true,
              "rules": [],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "transaction Date",
                "ar": "تاريخ الحركة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 3,
              "name": "voucherId",
              "description": null,
              "type": "Integer",
              "mandatory": true,
              "mainField": true,
              "rules": [
                {
                  "expression": "transaction == 'supply' || transaction == 'dispense' || transaction == 'return'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "voucherId",
                "ar": "رقم الفاتورة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 4,
              "name": "voucherDate",
              "description": null,
              "type": "Date",
              "mandatory": true,
              "mainField": true,
              "rules": [
                {
                  "expression": "transaction == 'supply' || transaction == 'dispense' || transaction == 'return'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "voucherDate",
                "ar": "تاريخ الفاتورة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 5,
              "name": "supplier",
              "description": null,
              "type": "Text",
              "mandatory": true,
              "mainField": true,
              "rules": [
                {
                  "expression": "transaction == 'supply'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "supplier",
                "ar": "المورد"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 6,
              "name": "distinationWarehouse",
              "description": null,
              "type": "OrganisationUnit",
              "mandatory": true,
              "mainField": true,
              "rules": [
                {
                  "expression": "transaction == 'dispense' || transaction == 'return'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "distinationWarehouse",
                "ar": "الجهة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 7,
              "name": "recievedBy",
              "description": null,
              "type": "FullName",
              "mandatory": true,
              "mainField": true,
              "rules": [
                {
                  "expression": "transaction == 'dispense'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "recievedBy",
                "ar": "مستلم الكمية"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            }
          ],
          "calculation": null,
          "defaultValue": null
        },
        {
          "order": 2,
          "name": "stockItems",
          "description": null,
          "type": "RepeatableSection",
          "mandatory": null,
          "mainField": null,
          "rules": [],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Stock Items Data",
            "ar": "عناصر الحركة"
          },
          "fields": [
            {
              "order": 9,
              "name": "batchNumber",
              "description": null,
              "type": "Text",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'supply'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "batchNumber",
                "ar": "رقم التشغيلة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 8,
              "name": "stockItem",
              "description": null,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": true,
              "rules": [],
              "listName": "stockItems",
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "stockItem",
                "ar": "الصنف"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 19,
              "name": "currency",
              "description": null,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "amount > 0",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": "currencies",
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "currency",
                "ar": "العملة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 10,
              "name": "barcode",
              "description": null,
              "type": "Text",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'supply'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "barcode",
                "ar": "الباركود"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 11,
              "name": "inventoryQuantity",
              "description": null,
              "type": "IntegerPositive",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'inventory'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "inventoryQuantity",
                "ar": "كمية الجرد"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 12,
              "name": "recievedQuantity",
              "description": null,
              "type": "IntegerPositive",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'supply'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "recievedQuantity",
                "ar": "الكمية المستلمة (الموردة)"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 13,
              "name": "deliveredQuantity",
              "description": null,
              "type": "IntegerPositive",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'dispense'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "deliveredQuantity",
                "ar": "الكمية المصروفة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 14,
              "name": "returnedQuantity",
              "description": null,
              "type": "IntegerPositive",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'return'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "returnedQuantity",
                "ar": "الكمية المرتجعة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 15,
              "name": "expiredQuantity",
              "description": null,
              "type": "IntegerPositive",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'expiry'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "expiredQuantity",
                "ar": "الكمية المنتهية"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 20,
              "name": "expiryDate",
              "description": null,
              "type": "Date",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'supply'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "expiryDate",
                "ar": "تاريخ الانتهاء"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 16,
              "name": "uom",
              "description": null,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": false,
              "rules": [],
              "listName": "uoms",
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "uom",
                "ar": "وحدة القياس"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 17,
              "name": "unitPrice",
              "description": null,
              "type": "Number",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "amount > 0",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "unitPrice",
                "ar": "سعر الوحدة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            },
            {
              "order": 18,
              "name": "amount",
              "description": null,
              "type": "Number",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "expression": "transaction == 'supply'",
                  "action": "Show",
                  "message": null,
                  "filterInfo": null
                }
              ],
              "listName": null,
              "referenceInfo": null,
              "choiceFilter": null,
              "label": {
                "en": "amount",
                "ar": "القيمة"
              },
              "fields": [],
              "calculation": null,
              "defaultValue": null
            }
          ],
          "calculation": null,
          "defaultValue": null
        }
      ],
      "options": [
        {
          "listName": "warehouselevel",
          "name": "NMCPCentral",
          "order": 1,
          "label": {
            "en": "Central",
            "ar": "المركز الرئيسي"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "warehouselevel",
          "name": "healthFacility",
          "order": 6,
          "label": {
            "en": "Health Facility",
            "ar": "مرافق صحية"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "warehouselevel",
          "name": "NMCPRegion",
          "order": 2,
          "label": {
            "en": "NMCP Region",
            "ar": "محاور"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "warehouselevel",
          "name": "NMCPBranch",
          "order": 3,
          "label": {
            "en": "NMCP Branch",
            "ar": "فروع البرنامج"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "transactions",
          "name": "supply",
          "order": 0,
          "label": {
            "en": "Supply",
            "ar": "توريد"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "stockItems",
          "name": "ACT60MG",
          "order": 0,
          "label": {
            "en": "ACT60MG",
            "ar": "كوارتم 60"
          },
          "properties": {}
        },
        {
          "listName": "transactions",
          "name": "inventory",
          "order": 0,
          "label": {
            "en": "Inventory",
            "ar": "جرد"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "uoms",
          "name": "Ampoule",
          "order": 0,
          "label": {
            "en": "Ampoule",
            "ar": "امبولة"
          },
          "properties": {}
        },
        {
          "listName": "stockItems",
          "name": "PMQ7.5MG",
          "order": 0,
          "label": {
            "en": "PMQ7.5MG",
            "ar": "بريماكوين 7.5 مجم"
          },
          "properties": {}
        },
        {
          "listName": "stockItems",
          "name": "ACT40MG",
          "order": 0,
          "label": {
            "en": "ACT40MG",
            "ar": "كوارتم 40"
          },
          "properties": {}
        },
        {
          "listName": "uoms",
          "name": "Tablet",
          "order": 0,
          "label": {
            "en": "Tablet",
            "ar": "قرص"
          },
          "properties": {}
        },
        {
          "listName": "currencies",
          "name": "USD",
          "order": 0,
          "label": {
            "en": "USD",
            "ar": "دولار"
          },
          "properties": {}
        },
        {
          "listName": "transactions",
          "name": "return",
          "order": 0,
          "label": {
            "en": "return",
            "ar": "مرتجع"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "uoms",
          "name": "Tape6Tablets",
          "order": 0,
          "label": {
            "en": "Tape 6 Tablets",
            "ar": "شريط 6 اقراص"
          },
          "properties": {}
        },
        {
          "listName": "warehouselevel",
          "name": "Districts",
          "order": 5,
          "label": {
            "en": "District",
            "ar": "مكاتب الصحة في المديريات"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "stockItems",
          "name": "DRDT",
          "order": 0,
          "label": {
            "en": "DRDT",
            "ar": "الفحص السريع للضنك"
          },
          "properties": {}
        },
        {
          "listName": "currencies",
          "name": "YER",
          "order": 0,
          "label": {
            "en": "YER",
            "ar": "ريال يمني"
          },
          "properties": {}
        },
        {
          "listName": "uoms",
          "name": "cassette",
          "order": 0,
          "label": {
            "en": "cassette",
            "ar": "كاست"
          },
          "properties": {}
        },
        {
          "listName": "warehouselevel",
          "name": "NMCPUnit",
          "order": 4,
          "label": {
            "en": "NMCP Unit",
            "ar": "وحدات محافحة الملاريا"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "stockItems",
          "name": "ARTING60MG",
          "order": 0,
          "label": {
            "en": "ARTING60MG",
            "ar": "ارتيسونات 60 مجم امبول"
          },
          "properties": {}
        },
        {
          "listName": "warehouselevel",
          "name": "CHV",
          "order": 7,
          "label": {
            "en": "CHV",
            "ar": "متطوعات"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "transactions",
          "name": "expiry",
          "order": 0,
          "label": {
            "en": "expiry",
            "ar": "منتهي"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "stockItems",
          "name": "MRDT",
          "order": 0,
          "label": {
            "en": "MRDT",
            "ar": "الفحص السريع للملاريا"
          },
          "properties": {}
        },
        {
          "listName": "stockItems",
          "name": "PMQ15MG",
          "order": 0,
          "label": {
            "en": "PMQ15MG",
            "ar": "بريماكوين 15 مجم"
          },
          "properties": {}
        },
        {
          "listName": "transactions",
          "name": "dispense",
          "order": 0,
          "label": {
            "en": "dispense",
            "ar": "صرف"
          },
          "properties": {
            "age": 0,
            "phone": "",
            "code": ""
          }
        },
        {
          "listName": "uoms",
          "name": "Tape10Tablets",
          "order": 0,
          "label": {
            "en": "Tape10Tablets",
            "ar": "شريط 10 اقراص"
          },
          "properties": {}
        },
        {
          "listName": "uoms",
          "name": "Kit25Test",
          "order": 0,
          "label": {
            "en": "Kit25Test",
            "ar": "كت 25 شريط"
          },
          "properties": {}
        },
        {
          "listName": "stockItems",
          "name": "ACT20MG",
          "order": 0,
          "label": {
            "en": "ACT20MG",
            "ar": "كوارتم 20"
          },
          "properties": {}
        },
        {
          "listName": "uoms",
          "name": "Kit10Test",
          "order": 0,
          "label": {
            "en": "Kit10Test",
            "ar": "كت 10 اشرطة"
          },
          "properties": {}
        },
        {
          "listName": "stockItems",
          "name": "ACT80MG",
          "order": 0,
          "label": {
            "en": "ACT80MG",
            "ar": "كوارتم 80"
          },
          "properties": {}
        }
      ],
      "orgUnits": [
        "YCEyRUYxMTo"
      ],
      "label": {},
      "formInstances": [],
      "displayName": "bookkeeping",
      "translations": []
    }
  ]
};
