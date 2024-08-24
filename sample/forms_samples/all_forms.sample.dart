final Map<String, dynamic> dSampleAllForms = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 5,
  "pageSize": 20,
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
          "uid": "oBne999mA9n",
          "code": null,
          "name": "sessionDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Date",
            "ar": "التاريخ"
          }
        },
        {
          "uid": "o199339mA9n",
          "code": null,
          "name": "peopleItns",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Number of Beneficiaries",
            "ar": "عدد المستفيدين الوقاية من الانتقال"
          }
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
          "properties": {
          }
        },
        {
          "listName": "sessionTypes",
          "name": "BreadingSite",
          "order": 0,
          "label": {
            "en": "Breading Site",
            "ar": "مواقع التوالد"
          },
          "properties": {
          }
        },
        {
          "listName": "sessionTypes",
          "name": "Transmission_Prevention",
          "order": 0,
          "label": {
            "en": "Transmission Prevention",
            "ar": "الوقاية من الانتقال"
          },
          "properties": {
          }
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
      "displayName": "جلسات التثقيف المجتمعي",
      "translations": [
      ]
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
          "uid": "cD33F8gH9I0",
          "code": null,
          "name": "item",
          "description": "Name of the patient",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": "drugsTypes",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Supplay Item",
            "ar": "نوع العلاج"
          }
        },
        {
          "uid": "q444T6uV7W8",
          "code": null,
          "name": "previousBalance",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "New Supply",
            "ar": "تموين جديد"
          }
        },
        {
          "uid": "jK1l666O3P4",
          "code": null,
          "name": "consumed",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Corrupt or Lost",
            "ar": "تالف أو مفقود"
          }
        },
        {
          "uid": "eF3334iJ5K6",
          "code": null,
          "name": "remaining",
          "description": null,
          "type": "IntegerZeroOrPositive",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Remaining",
            "ar": "متبقي نهاية الشهر"
          }
        },
        {
          "uid": "xBCEEDbC1D2",
          "code": null,
          "name": "comment",
          "description": null,
          "type": "LongText",
          "mandatory": null,
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Comments",
            "ar": "ملاحظات وتعليقات إن وجدت"
          }
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
          "properties": {
          }
        },
        {
          "listName": "drugsTypes",
          "name": "MDrugs",
          "order": 0,
          "label": {
            "en": "Malaria Drugs",
            "ar": "أدوية الملاريا"
          },
          "properties": {
          }
        },
        {
          "listName": "drugsTypes",
          "name": "ARTSUPP",
          "order": 0,
          "label": {
            "en": "ArtisunatSupp",
            "ar": "تحاميل أرتيسونات"
          },
          "properties": {
          }
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
      "displayName": "استخدام الادوية والفحص السريع",
      "translations": [
      ]
    },
    {
      "createdBy": "62099",
      "createdDate": "2024-08-24T20:05:26.363Z",
      "lastModifiedBy": "62099",
      "lastModifiedDate": "2024-08-24T20:05:26.363Z",
      "id": "66ca3d066ce8a30565e03599",
      "uid": "KcsA3KETRbY",
      "code": "CHV_PATIENTS_FORM",
      "name": "استمارة تدبير حالات الملاريا",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 1,
      "defaultLocal": null,
      "fields": [
        {
          "uid": "cD7eF8gH9I0",
          "code": null,
          "name": "name",
          "description": "Name of the patient",
          "type": "FullName",
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
          "referenceInfo": null,
          "choiceFilter": null,
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
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Village Name",
            "ar": "اسم القرية"
          }
        },
        {
          "uid": "vW3xY4zA5B6",
          "code": null,
          "name": "visitDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "referenceInfo": null,
          "choiceFilter": null,
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
          "mainField": false,
          "rules": [
          ],
          "listName": "genders",
          "referenceInfo": null,
          "choiceFilter": null,
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
          "mainField": false,
          "rules": [
            {
              "uid": "eF5gH6iJ5K6",
              "field": "pregnant",
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
          }
        },
        {
          "uid": "lM7nO8pQ9R0",
          "code": null,
          "name": "testResult",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": "testResults",
          "referenceInfo": null,
          "choiceFilter": null,
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
          "mainField": false,
          "rules": [
            {
              "uid": "eF3gH8iJ5K9",
              "field": "detectionType",
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
          }
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
          }
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
              "uid": "gH1011kL1M2",
              "field": "treatment",
              "expression": "severity == 'SEVERE'",
              "action": "Filter",
              "message": {
                "en": "Error"
              },
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": null,
                "optionsToShow": [
                  "FIRST_DOSE_REFERRAL",
                  "REFERRAL"
                ]
              }
            },
            {
              "uid": "gH10J1kL1M2",
              "field": "treatment",
              "expression": "testResult == 'PF' || testResult == 'PV' || testResult == 'MIX'",
              "action": "Show",
              "message": {
                "en": "Error"
              },
              "filterInfo": null
            },
            {
              "uid": "gH99J1kL1M2",
              "field": "treatment",
              "expression": "pregnant && (testResult == 'PF' || testResult == 'PV' || testResult == 'MIX')",
              "action": "Filter",
              "message": {
                "en": "Error"
              },
              "filterInfo": {
                "fieldToFilter": "treatment",
                "optionsToHide": [
                  "TREATED",
                  "FIRST_DOSE",
                  "FIRST_DOSE_REFERRAL"
                ],
                "optionsToShow": null
              }
            }
          ],
          "listName": "treatments",
          "referenceInfo": null,
          "choiceFilter": null,
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
          "mainField": false,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Comments",
            "ar": "ملاحظات وتعليقات"
          }
        }
      ],
      "options": [
        {
          "listName": "testResults",
          "name": "INVALID",
          "order": 0,
          "label": {
            "en": "Invalid",
            "ar": "غير صالح"
          },
          "properties": {
          }
        },
        {
          "listName": "genders",
          "name": "MALE",
          "order": 0,
          "label": {
            "en": "Male",
            "ar": "ذكر"
          },
          "properties": {
          }
        },
        {
          "listName": "genders",
          "name": "FEMALE",
          "order": 0,
          "label": {
            "en": "Female",
            "ar": "أنثى"
          },
          "properties": {
          }
        },
        {
          "listName": "testResults",
          "name": "NEGATIVE",
          "order": 0,
          "label": {
            "en": "Negative",
            "ar": "سلبي"
          },
          "properties": {
          }
        },
        {
          "listName": "testResults",
          "name": "PF",
          "order": 0,
          "label": {
            "en": "Plasmodium falciparum",
            "ar": "بلاسموديوم فالسيباروم"
          },
          "properties": {
          }
        },
        {
          "listName": "detectionTypes",
          "name": "ACTIVE",
          "order": 0,
          "label": {
            "en": "Active",
            "ar": "بحث نشط"
          },
          "properties": {
          }
        },
        {
          "listName": "treatments",
          "name": "FIRST_DOSE",
          "order": 0,
          "label": {
            "en": "First Dose",
            "ar": "الجرعة الأولى"
          },
          "properties": {
          }
        },
        {
          "listName": "treatments",
          "name": "REFERRAL",
          "order": 0,
          "label": {
            "en": "Referral",
            "ar": "إحالة"
          },
          "properties": {
          }
        },
        {
          "listName": "testResults",
          "name": "PV",
          "order": 0,
          "label": {
            "en": "Plasmodium vivax",
            "ar": "بلاسموديوم فيفاكس"
          },
          "properties": {
          }
        },
        {
          "listName": "treatments",
          "name": "FIRST_DOSE_REFERRAL",
          "order": 0,
          "label": {
            "en": "First Dose & Referral",
            "ar": "الجرعة الأولى وإحالة"
          },
          "properties": {
          }
        },
        {
          "listName": "treatments",
          "name": "TREATED",
          "order": 0,
          "label": {
            "en": "Treated",
            "ar": "معالج"
          },
          "properties": {
          }
        },
        {
          "listName": "detectionTypes",
          "name": "REACTIVE",
          "order": 0,
          "label": {
            "en": "Reactive",
            "ar": "زيارة روتينية"
          },
          "properties": {
          }
        },
        {
          "listName": "severities",
          "name": "SEVERE",
          "order": 0,
          "label": {
            "en": "Severe",
            "ar": "وخيمة"
          },
          "properties": {
          }
        },
        {
          "listName": "severities",
          "name": "SIMPLE",
          "order": 0,
          "label": {
            "en": "Simple",
            "ar": "بسيطة"
          },
          "properties": {
          }
        },
        {
          "listName": "testResults",
          "name": "MIX",
          "order": 0,
          "label": {
            "en": "Mixed",
            "ar": "مختلط"
          },
          "properties": {
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
      "displayName": "استمارة تدبير حالات الملاريا",
      "translations": [
      ]
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
          "uid": "qR56T6uV7W8",
          "code": null,
          "name": "continentQ",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": "continents",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Continent",
            "ar": "القارة"
          }
        },
        {
          "uid": "cD3eF8gH9I0",
          "code": null,
          "name": "countryQ",
          "description": "Country",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": "countries",
          "referenceInfo": null,
          "choiceFilter": "continentFilter == continentQ",
          "label": {
            "en": "Country",
            "ar": "الدولة"
          }
        },
        {
          "uid": "vW32Y4zA5B6",
          "code": null,
          "name": "cityQ",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": "cities",
          "referenceInfo": null,
          "choiceFilter": "countryFilter == countryQ",
          "label": {
            "en": "City",
            "ar": "المدينة"
          }
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
          "properties": {
          }
        },
        {
          "listName": "continents",
          "name": "na",
          "order": 0,
          "label": {
            "ar": "أمرسكا الشمالية",
            "en": "North America"
          },
          "properties": {
          }
        },
        {
          "listName": "continents",
          "name": "eu",
          "order": 1,
          "label": {
            "ar": "أوروبا",
            "en": "Europe"
          },
          "properties": {
          }
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
      "displayName": "test form",
      "translations": [
      ]
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
          "uid": "hCrOpS7EFPn",
          "code": null,
          "name": "stockItem",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
          ],
          "listName": "amdtypes",
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Stock Item",
            "ar": "الصنف"
          }
        },
        {
          "uid": "iEA6iJdQUJ8",
          "code": null,
          "name": "reportMonth",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Report Month",
            "ar": "الشهر"
          }
        },
        {
          "uid": "AMpSRxuug7w",
          "code": null,
          "name": "startOfMonthQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Quantity consumed",
            "ar": "الاستهلاك للشهر الحالي"
          }
        },
        {
          "uid": "NokdPawIDWd",
          "code": null,
          "name": "lastSupplyDate",
          "description": null,
          "type": "Date",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Last supply date",
            "ar": "تاريخ اخر عمليةامداد"
          }
        },
        {
          "uid": "vARZDwXniJ1",
          "code": null,
          "name": "deliveredToCHVQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Expired Quantity",
            "ar": "الكمية المنتهية"
          }
        },
        {
          "uid": "c6s45IJiq8s",
          "code": null,
          "name": "endOfMonthQuantity",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
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
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Expiry date",
            "ar": "تاريخ صلاحية الكمية المتوفرة"
          }
        },
        {
          "uid": "nwp4Aprs3EN",
          "code": null,
          "name": "stockoutDays",
          "description": null,
          "type": "Integer",
          "mandatory": true,
          "mainField": true,
          "rules": [
          ],
          "listName": null,
          "referenceInfo": null,
          "choiceFilter": null,
          "label": {
            "en": "Stockout days",
            "ar": "فترة انقطاع الصنف بالايام"
          }
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
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "ACT20",
          "order": null,
          "label": {
            "en": "Coartem 20 mg",
            "ar": "كوارتم_20"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "ACT40",
          "order": null,
          "label": {
            "en": "Coartem 40 mg",
            "ar": "كوارتم_40"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "ACT60",
          "order": null,
          "label": {
            "en": "Coartem 60 mg",
            "ar": "كوارتم_60"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "ACT80",
          "order": null,
          "label": {
            "en": "Coartem 80 mg",
            "ar": "كوارتم_80"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "ARTINJ",
          "order": null,
          "label": {
            "en": "Artesunate injection 60 mg ampoule",
            "ar": "ارتيسونات 60 مجم امبول"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "DRDT",
          "order": null,
          "label": {
            "en": "Dengue Rapid Diagnostic Test",
            "ar": "الفحص السريع للضنك بالشريط"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "PMQ7.5MG",
          "order": null,
          "label": {
            "en": "Primaquine 7.5 mg tape",
            "ar": "بريماكوين 7.5 مجم بالشريط"
          },
          "properties": {
          }
        },
        {
          "listName": "amdtypes",
          "name": "PMQ15MG",
          "order": null,
          "label": {
            "en": "Primaquine 15 mg tape",
            "ar": "بريماكوين 15 مجم بالشريط"
          },
          "properties": {
          }
        }
      ],
      "orgUnits": [
        "YCEyRUYxMTo"
      ],
      "label": {
        "en": "Health Facility Monthly Stock Report",
        "ar": "التقرير الشهري للمرافق الصحية"
      },
      "displayName": "التقرير الشهري للمرافق الصحية",
      "translations": [
      ]
    }
  ]
};
