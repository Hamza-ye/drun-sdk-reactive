final Map<String, dynamic> dSampleAllForms = {
  "paging": false,
  "page": 0,
  "pageCount": 1,
  "total": 6,
  "pageSize": 6,
  "dataForms": [
    {
      "createdBy": null,
      "createdDate": "2024-08-30T21:42:50.095Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-30T21:42:50.443Z",
      "id": "66a6ca5ba9d1d71440b4ec6a",
      "uid": "RQlMiMcukid",
      "code": "CHV_SESSIONS_FORM",
      "name": "جلسات التثقيف المجتمعي",
      "description": null,
      "disabled": null,
      "activity": "oBne891mA9n",
      "version": 8,
      "defaultLocal": "en",
      "fields": [
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "sessionDate",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "peopleItns",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "peopleBreadingSites",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "peopleTransmissionPrevention",
          "fields": []
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
      "displayName": "جلسات التثقيف المجتمعي",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-30T21:42:50.098Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-30T21:42:51.013Z",
      "id": "66b03b561327d612461a6aad",
      "uid": "zglED4TsbTh",
      "code": "CHV_SUPPLY_FORM",
      "name": "استخدام الادوية والفحص السريع",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 9,
      "defaultLocal": "en",
      "fields": [
        {
          "order": 1,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "item",
          "fields": []
        },
        {
          "order": 2,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "previousBalance",
          "fields": []
        },
        {
          "order": 3,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "newSupply",
          "fields": []
        },
        {
          "order": 4,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "consumed",
          "fields": []
        },
        {
          "order": 5,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "lostCorrupt",
          "fields": []
        },
        {
          "order": 6,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "remaining",
          "fields": []
        },
        {
          "order": 6,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "comment",
          "fields": []
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
      "displayName": "استخدام الادوية والفحص السريع",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-30T21:42:50.103Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-30T21:42:52.247Z",
      "id": "66b7d4d39b38ab75b4614b43",
      "uid": "KqNC99jcuzQ",
      "code": "HFMSR",
      "name": "التقرير الشهري للمرافق الصحية",
      "description": "Health Facility Monthly Stock Report",
      "disabled": false,
      "activity": "U42up6b3mbG",
      "version": 4,
      "defaultLocal": "en",
      "fields": [
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "startOfMonthQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "stockItem",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "stockoutDays",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "reportMonth",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "receivedQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "consumedQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "lastSupplyDate",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "deliveredToCHVQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "redistributedQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "expiredQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "endOfMonthQuantity",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "expiryDate",
          "fields": []
        }
      ],
      "options": [
        {
          "listName": "amdtypes",
          "name": "MRDT",
          "order": 0,
          "label": {
            "en": "Malaria Rapid Diagnostic Test",
            "ar": "الفحص السريع للملاريا بالشريط"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT20",
          "order": 0,
          "label": {
            "en": "Coartem 20 mg",
            "ar": "كوارتم_20"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT40",
          "order": 0,
          "label": {
            "en": "Coartem 40 mg",
            "ar": "كوارتم_40"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT60",
          "order": 0,
          "label": {
            "en": "Coartem 60 mg",
            "ar": "كوارتم_60"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ACT80",
          "order": 0,
          "label": {
            "en": "Coartem 80 mg",
            "ar": "كوارتم_80"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "ARTINJ",
          "order": 0,
          "label": {
            "en": "Artesunate injection 60 mg ampoule",
            "ar": "ارتيسونات 60 مجم امبول"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "DRDT",
          "order": 0,
          "label": {
            "en": "Dengue Rapid Diagnostic Test",
            "ar": "الفحص السريع للضنك بالشريط"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "PMQ7.5MG",
          "order": 0,
          "label": {
            "en": "Primaquine 7.5 mg tape",
            "ar": "بريماكوين 7.5 مجم بالشريط"
          },
          "properties": {}
        },
        {
          "listName": "amdtypes",
          "name": "PMQ15MG",
          "order": 0,
          "label": {
            "en": "Primaquine 15 mg tape",
            "ar": "بريماكوين 15 مجم بالشريط"
          },
          "properties": {}
        }
      ],
      "orgUnits": [
        "vBDUXTH24HL",
        "BggznZnS7Tx",
        "TKQiNlZLbTj",
        "kQ5jIyzBV4g",
        "HFsvUnyoEq3",
        "EkkfxPWEGEK",
        "oVy9cziXKjk",
        "gTdASTn7RdG",
        "ZQ364QWTYAV",
        "JFumdz49FKZ",
        "xchXYfqI2Xt",
        "dCDYxp1NSJj",
        "RLQrJZqkLQr",
        "LxiHzO2pSFl",
        "eKxVEAcNroa",
        "S7tha4CLsbi",
        "pOWxUSOWE7F",
        "K8ui0PXgwYQ",
        "hV1T34GJnCx",
        "JUOMwijrz6j",
        "bFIuXrOvXO1",
        "TIm40LeGnWP",
        "TygxsccoJ3Z",
        "HpZvt6nbOVh",
        "dutcVpzfOGZ",
        "VWnK6MGocVl",
        "OsfsqRnC1VK",
        "l0PznF6WcQ1",
        "m4ZyDMzlLgs",
        "t7CJAQD0UiT",
        "Xjf1m0ePCsx",
        "cpe3xV5rCnC",
        "MZtKLHU7Mw8",
        "fBwDd1VbPVF",
        "uJxn0VkVszU",
        "oBfdHBfP3ju",
        "qTD3YzjYlNQ",
        "KvCasj863uQ",
        "hVBQwdFRhC7",
        "Jgx5o03CnGF",
        "zXBEMXCIMJv",
        "woAvF2p7u2s",
        "e54c9WXSDtu",
        "STVwn4MOulY",
        "a73TGfbAvIW",
        "vGWPlNmlcuV",
        "BmIhHVDSTVx",
        "QiH4WIgXyMg",
        "hlv0j6A7EZ7",
        "w0jQ21TZ3n2",
        "n7cQS76qlgj",
        "QUpjOnGxoPg",
        "JCTQ2djiQxj",
        "GknikUkUS02",
        "Hps6nTXMrCD",
        "teyXMAbpEfp",
        "w2ALmqPPZS2",
        "iwSZwxaBfMI",
        "lEPdabIZGMr",
        "AFtxavhzMzG",
        "veB1Q4rnAZ1",
        "E9RDo0YPoS0",
        "UFsZoxKzRDu",
        "z9JLL3nvNdv",
        "o5C25UHBowu",
        "TPxUcV2bItF",
        "xjFTnXSUUnX",
        "NvBSb2K5tzd",
        "LX4DTojAtj7",
        "HDVs7d57kU3",
        "p1GIM5gGAVP",
        "OGyUC04EHMe",
        "tQGocBMC1aJ",
        "SzwoUnEVJ9i",
        "qAktJvdnkom",
        "jqqbo6KQUZJ",
        "IY9viz8mFLE",
        "i7F4qx8nVW8",
        "vqAakIjqz51",
        "cugXYJVVk1i",
        "Jc2dcN5o90F",
        "drBHQPJgRL3",
        "pw62abZvP7v",
        "sBO2aKEtJYI",
        "xbKTOO2xKd3",
        "f58eXMiPoA5",
        "ZpwNiCftDZf",
        "GwQO4tqwe5M",
        "sy2EseSuCS8",
        "VEvG2prncaR",
        "PmPwgeQtTkf",
        "w2qf54yxBAM",
        "AHQYxxPLy0a",
        "pN0quOWYce5",
        "qLj4TAxUAFG",
        "sTapUJmDihy",
        "DF0dtBwaV4T",
        "Xk1HHC6yLHd",
        "PLDQpuhq0fV",
        "pHCJ6sQ4kH5",
        "xMmvjnA2GHt",
        "E4n8fmcOmo0",
        "WBZES8Kh5hm",
        "ZEncKT7aAAp",
        "BX4FrMN8j7H",
        "itFY6zI9wHe",
        "mjCf130QBoM",
        "rpuVgaNpFtH",
        "NkCF1LAHfX9",
        "cznGyg0KEei",
        "jFOmyHXOXVJ",
        "bwtUes7NdHh",
        "EKm270JT4OK",
        "neAwTwQTint",
        "k7VtYN7Magg",
        "RgHyyiyJF2X",
        "TDiC5are5iP",
        "TIG8Rbp3qJF",
        "WR2m9o7expS",
        "JES0UpIjf35",
        "PV0MgoxA7Lf",
        "fxLXzv6Q6IF",
        "H6xa7YY3ALD",
        "tI4MvBVKUSJ",
        "p6TOhiHsJXl",
        "Eqvoa8jifRe",
        "u8Di4j6KTA0",
        "zhO06Timcjv",
        "xhufgSEqgsD",
        "WrAodO4VLLw",
        "JV0WYHwaXBF",
        "gJoAhR5yAy6",
        "nP25wmgo32N",
        "dTNcscFLaWt",
        "iQbWI6papqo",
        "jnqjrMMQoDJ",
        "uNM3kOX7TX0",
        "obAohwABPXE",
        "yGHzA8xnjAE",
        "aCC3ntykCe0",
        "scbJFxHgxX8",
        "hHof9kIsAqn",
        "ps678436rlv",
        "FMumaN2N99L",
        "hh2ryV1wEMd",
        "WB8MuZxO4Cw",
        "DHbNVMPpyIz",
        "wcpF90SwztW",
        "d8X3Vhk6nAD",
        "sO3qJQzqjTo",
        "HSHyuo9IVqN",
        "aOViDf1zstg",
        "y9xarKcA7Wu",
        "XO2AirduDRT",
        "M0bkkycL6sS",
        "vYesQxtJ0cB",
        "SGG8ObUr5OE",
        "CfGKBdzhKhy",
        "LuBVZL7aipH",
        "Nh92uvkNqL9",
        "bSQZNoDOd0r",
        "aKsnvISaxI0",
        "XwYX0AMftOx",
        "tZoPPnOoPQz",
        "bvKrMLt1Axr",
        "PAXtDxQGaUB",
        "KfDbdG9nHIk",
        "xD3NsMEA3LN",
        "xPHKxm5Mr0X",
        "UDt57koiJZu",
        "neMxU743WJD",
        "TJZuG2dj1Mj",
        "OX0fUnSL06A",
        "PRcJzVkqkyf",
        "tT2SS8LWHy9",
        "dEO0lAd6PDj",
        "AnZraKtjafa",
        "Q4UQeYsiQ8q",
        "PEj2u8z3kGf",
        "lnmGtDWCHZ1",
        "sJ85L5EEOc8",
        "mo2fUfUGXTs",
        "CI8DcNcSrCS",
        "V4hVcdTjFKR",
        "K8R1ChPQoda",
        "ygBodDkCXZu",
        "rRTdY5zuHzR",
        "XKC6OYaT8Sx",
        "QxS7QZtNQeg",
        "bHoNuRv2qIh",
        "beaELh6jsZh",
        "KB3t1h5Yd16",
        "SGWk1fdUQPi",
        "bC1stAPmqoX",
        "PsnXX1PDTMp",
        "MYky62D8ieI",
        "mu6vhQCuCHs",
        "HNuDLpFgmuX",
        "gX1JRdOXwbw",
        "R5U4cvFC18N",
        "FQ7BFFntQ31",
        "alYYd70GdLA",
        "kF9ieHO7IFA",
        "gHcOniWmVAG",
        "m9SEnmxMuus",
        "pDH11O8XCp5",
        "hBQwROCmrCH",
        "RI2UruaZffD",
        "W2PuhiQJrHw",
        "CBYKaqfiUnc",
        "vPphzRVvB5L",
        "dpIIAO3dY5j",
        "wKD9KzraHk2",
        "WLcWoIvtIfm",
        "vTmsVPvh3cL",
        "RtFeccrwFgD",
        "nQON8sSV8cD",
        "SGRM8u3NU1Y",
        "gIw82uCBrGG",
        "wFK5u5POcDW",
        "uCsIBfuhLvA",
        "szNUVwSRWF8",
        "xzEOR8ndKxD",
        "THtGeU1TWAj",
        "PwUoyDEpXZp",
        "M678AIVDOUm",
        "RLjX5QAebHh",
        "BQ0bAj0bl4R",
        "sX9QDCNfRho",
        "n3e991aUOxt",
        "SsiCXLGhSni",
        "uQEk6zlIGBU",
        "m4K8I0SmF5C",
        "VlUoOItaXHR",
        "rlOiwh9Af17",
        "S2YHA2a2QNs",
        "x2gUJWf78QD",
        "qmWx3HRJcvm",
        "IYE9pFARowY",
        "wUqAjBhcTs2",
        "WrIyLF9oZSS",
        "lkLiGSXSmEr",
        "zQGhzSl6HN5",
        "HdeG3zRCzAD",
        "J2mkLaP0yt5",
        "xUhXRN09Pc3",
        "sbcyeyxn4Ly",
        "GPlNPcnMiPC",
        "zcvhq1HdAFZ",
        "VxRpYoTuiUl",
        "Q0XASsA5Hgq",
        "o4Vy1rLgPR4",
        "iCuTiAX7kf8",
        "U9aXaY1motk",
        "zTTzFsv6s0F",
        "Kp5zM00zmEG",
        "s7KrT3WQO2I",
        "hrKUJgSAAUd",
        "ELiTtLxGXrK",
        "k8M6lJ1te3q",
        "ee45qusw68u",
        "XKASN7KyAEx",
        "U5zdBy2RP6a",
        "Lih5HadSvVH",
        "sCpvgz28mpI",
        "u9yKIdDwYVA",
        "OvBOEfOhxNe",
        "SDpO0iJiGFO",
        "MSlSHJu9Ue8",
        "xZTr00bFyJX",
        "ccPAmV3vk4s",
        "IEvdbD7OGgE",
        "pEOUXE9XTIl",
        "uAM51Kq4QAA",
        "LSjc997ERCR",
        "Lo5IU2yACBR",
        "vjGgxWiZHqr",
        "bpWHqfAHfDB",
        "NL8FXHVqoHJ",
        "bLtxUL0vMQr",
        "CcZqg1B63xS",
        "v946HZGeR01",
        "BelVGMtkS3x",
        "oLFtJRvXpTk",
        "UONakAwR6ba",
        "mxqX8kuLAMC",
        "vI2cF5gkBuL",
        "PY5KerPv0mB",
        "lrEtMP20gqh",
        "lvrkChhFkSB",
        "exFCizO5EIu",
        "ybnNmZBcTYY",
        "wdORR5xUCjC",
        "zsCkS66HkEF",
        "cBW83nKAB4Y",
        "Oj0BbME7f5e",
        "BB0E1OSuDOR",
        "YrEGadHlwxe",
        "EZZTnCPoKLe",
        "Z0g6iEivpOf",
        "R1A8Ma8rpZr",
        "TUqE16zPPFt",
        "VsGggeEHEuR",
        "YoxqZJ2RBKe",
        "DfmJEt3gewJ",
        "RVDzCBZ1QlD",
        "Y3rLyMzPWze",
        "xsepCKcGk4D",
        "gkJc4VnaIm6",
        "T5rfm6H29bj",
        "JgVgr4xPOCP",
        "gNDFW9uKHgm",
        "UPxdJ1lOIuQ",
        "i7EzoFDdeNy",
        "L2XE8pWiBH7",
        "hLK5u7BAtQ7",
        "oz0zuTLEYiO",
        "lArOmnuEtxL",
        "KFtfKJ8IpF6",
        "mr9UxJDIGMC",
        "MIcs8TH4Y3m",
        "o5JlNsDfr5E",
        "TDEiixMA7zF",
        "hvHcStXmNh7",
        "kLjFbJicNs0",
        "QmxxfyNTBdC",
        "GxC9PEjKkLW",
        "hTQCmL860Vx",
        "g6EXzA4sMnc",
        "ZTVogFUmrzp",
        "Va7xsV3y41b",
        "kYrKndRmjy0",
        "A1RqSezSjEQ",
        "kHI6kecHp5g",
        "kimOcGPefU0",
        "m9C2UbEFdLs",
        "Hbyw9IxC7JD",
        "vEmbcH0VClr",
        "hMAPz4L6jan",
        "pDeBRqEKbXP",
        "IG51UBtHPoO",
        "GBDPyPipfhC",
        "LExEez6b3WR",
        "B1aBbU7HjxR",
        "SwpoLN0p3Wi",
        "dXG480wGAct",
        "R6Hg4A2Eq8N",
        "NqsTRhl0d4d",
        "G8MPwYGMdgM",
        "JjK5p2TT9QP",
        "RFkmPWIOXGD",
        "kX7GRO0MVdg",
        "ryAsvgxIC2n",
        "VM8MHApHz1v",
        "g5avw7c2Ff6",
        "oM3XUhUpZgk",
        "Tdim8HKtfeP",
        "J4GuL2uUMq5",
        "lUqKsCOZr81",
        "LOENek7qo6l",
        "ooSdeGKlePE",
        "wf3tRNxHdCM",
        "W8ZkLwlE1Hc",
        "N6tiOQvySJ9",
        "TUkdcWKzThP",
        "PFULmjcPRUf",
        "z9gmLQQNpnF",
        "nsYlj0hGAej",
        "X1vJLdmoGWd",
        "MvdmR18yCIS",
        "awgKZaDoWLA",
        "y2D5oE6Y39O",
        "dfCHfV6F1iZ",
        "wlzbY7qJzRM",
        "h2t4aUyA4Jn",
        "SUsGdC4p1ds",
        "NjMbHmvz0hd",
        "r3k043DmdQH",
        "CBtGSNw0N6S",
        "ubwaFZPs1WU",
        "j4fL3YT3AWp",
        "iPUmeJjuSO8",
        "ruxDoofqJbH",
        "YPMy8hG47JU",
        "Y91on2plCtU",
        "A8NBbGNxwn6",
        "ynfP5D6lMEY",
        "nN1hUmLB1st",
        "JyGqUvz2euZ",
        "NDxx9yOEI1d",
        "oAtsitkJWju",
        "hoNnTAgN5Zx",
        "pHEpCOWroX5",
        "WeCx38AEI7c",
        "gqSpFE3k7Lc",
        "TZWcYOJvWMZ",
        "lgtOPSY5GE1",
        "KFktKMJAECa",
        "hOZbYdRUDIH",
        "VlCLnc0yScR",
        "VqRsLdRvH5H",
        "rjZFnX3fThR",
        "TvFTAgMF2DZ",
        "R6xd87dNaSX",
        "B7lu33JhQxH",
        "RYPNEUwYDmh",
        "P3d1h335TEB",
        "VCto19HHIdv",
        "BykPgFPiqIR",
        "bFKrj7lteYr",
        "fcwbUXHq7RF",
        "bcHqS1fmHz1",
        "iCq5oFUYBjo",
        "bweOAElR86h",
        "E50K6KYXqXA",
        "rez20OsOCiR",
        "bOLfR86WX9B",
        "EJINQ4niCse",
        "ssozypHdpoo",
        "pZ3nCliR92P",
        "JktZTLLotqF",
        "A22aDQ51Uua",
        "tykzyprExuz",
        "TzjbnlTfxDt",
        "cj3HZmOJLaY",
        "gPOau1fGKEm",
        "HsJFBaFTxVX",
        "vgs0s9vMWaB",
        "Zc0Snu73qrf",
        "kP2OpIgFEfg",
        "TF0xlCCxL1Z",
        "hDI7l8dQpAH",
        "FD4fHr4dY61",
        "laWAkluCUyr",
        "ICCiWFFk1L4",
        "CM1x6xfV9H8",
        "xEffEsuTBeD",
        "v3wDb6Wo9zB",
        "emp0Wkg6dU4",
        "fQ9JbuKVWQl",
        "BbpXAPsOO3x",
        "Al7NBkRd6s6",
        "OTQ8P6Zo4XU",
        "iz9Kcckqnp8",
        "eh42lB11plu",
        "guilQtforM6",
        "ohB1O5PndSO",
        "ZRJwD6ms1HV",
        "cUh569i8kzs",
        "B6YIhwtdtp7",
        "T98XylBVtxZ",
        "wcUrkUmsii2",
        "uABTz1FJGMK",
        "NNeQiIsFeEn",
        "vr7BnNt1Ec1",
        "WsjeFQHObBm",
        "N1MftGMKtw9",
        "YslChIzJ73o",
        "p3QPcHpIY95",
        "XC2CfGac2HT",
        "OkaVn87lbZA",
        "REzbt8jZBnD",
        "Epo4uZkde5U",
        "eLOy9w1G56k",
        "sY3uSmI8z38",
        "yi1sbMlXv5O",
        "qWEMLfZQtpQ",
        "o6IiAJczqru",
        "UM0OkomYkea",
        "I3NBgfxPt5O",
        "dtbp1HgtX6j",
        "ohJosrIGVc4",
        "JpfXSJUMLrZ",
        "dOYgq2lUqet",
        "LKXAqthkdy7",
        "SEHvB1iI4Es",
        "F2j6QPN2weB",
        "pxt7mLCbfJP",
        "BGV0DaCjx2H",
        "pHMYAtbuuxP",
        "Ot7fpRuPoPe",
        "QbgQxefy3WC",
        "zSGzzWRYSn5",
        "jnbXYT7Ewn9",
        "KQfyWW55KIQ",
        "wgIvz9eMVas",
        "qEeWs1qPgiQ",
        "TsTpQxWXOsZ",
        "VMTI5jN8QWv",
        "Hpv5he39tDD",
        "ea0hWeYK6ia",
        "EiqGOuTqHwK",
        "zPkeWvY3OIZ",
        "vGKxcs3ukHL",
        "sgx192Ak48y",
        "xoghRU7GALN",
        "Xebrsz11Y0d",
        "DcnJa83iQ7z",
        "gmVQIkes0qm",
        "gTBfncIdyZ6",
        "LOmOi3s2z0R",
        "PpkIg0y4WpL",
        "ol8T82EetJu",
        "n1sTO5en4VN",
        "eLTLgFVmPX4",
        "b0NL7mItRr1",
        "tY2Bua1khlJ",
        "Qe5JLkdd8DW",
        "fwQRPMZDDjb",
        "KnwHHRHJ48Q",
        "gzX0eeLKLQG",
        "sHGrv5lAq6S",
        "QivRoAvOwhg",
        "lkGrnDnuXK1",
        "irNfPgCdOFI",
        "Lc4wLQp9x17",
        "kIArIDL1IaK",
        "cK0ffR0innC",
        "kodyBFY8HQK",
        "z2ek8LolTrZ",
        "FD43fPTTyvV",
        "hdduTwr4F77",
        "dCrvatybtCD",
        "mHsrGYM6ass",
        "WrBzjnOCumw",
        "jOejMAT0gIf",
        "qEzS278rdaQ",
        "jXckGdUZcRp",
        "wW24HavtWN2",
        "kVewhV5sYTq",
        "sPBepTPXLhy",
        "UEFLd86L1JQ",
        "LEipNGCAd2b",
        "VAgDKOg30qb",
        "uLfGdgI6elq",
        "wnoKwZurX92",
        "e4H4HiyH6fu",
        "LJPdaAvzSrl",
        "vCdjivVJYmL",
        "UrPestVSPTk",
        "MKL7iXezXX8",
        "UW2up6bUmbG",
        "PcnIP8m2kXB",
        "ygC6Y0tS2lu",
        "Uo9e8BzpdRa",
        "e93jcoPXf44",
        "GSk5qHoWALC",
        "uN2GLIeZq9q",
        "i8Bov4Aig8e",
        "SBgEPtqJZsY",
        "J21d4bIWL9Z",
        "Km6df6Ggog6",
        "RuCiDHSqo1N",
        "joF9Ob7R6cJ",
        "lx95afjAFNr",
        "ADkRP1ZrSuG",
        "tM5VjlN7Fo9",
        "amnvED5V0Ug",
        "d4xiCwA1QLj",
        "luBmR1dLkWB",
        "jtDixexDMJp",
        "Bpn4YWutFD7",
        "VkQuaXGUPqb",
        "l2njko5BHOB",
        "oHi49YGUfbk",
        "BTi3NzqyTFR",
        "IU5hRVyeuqO",
        "lXzrXmIOKa1",
        "PAKEzRGv6RV",
        "rvvrY1CBn8n",
        "XcsA0NZBDMd",
        "psDeIKAH4eP",
        "pgL8sxHH8pl",
        "C09YFJEGRaS",
        "bfDPxJWf0Lh",
        "AVju9yAqo2Q",
        "QpJ7UZA3gBW",
        "o2rfZQI1qWu",
        "H6wuGOkw9uh",
        "d9Vs7P0tQ1Z",
        "J5oVPmLC1uj",
        "kpXpTsY6t7K",
        "DwDC6Fq9WUz",
        "k0w1pBcuE4A",
        "RA6EYocAbAX",
        "qvX47F7BnpG",
        "SuNSu7JVB0O",
        "IqwrJUwpxwE",
        "OHlgGE9PfEA",
        "UBBDk2uW7sk",
        "kxYbpoIJusK",
        "sQjOMp1gLMS",
        "uaor0MCa0sq",
        "foTAj43yvHF",
        "s7fTEeDFAGI",
        "pKH9LqgboJl",
        "NcEU4Dge0aT",
        "vnq9fu2u2jV",
        "xtvn0gZWKGX",
        "NHy7FoQcNOJ",
        "wpciEnnJ3es",
        "lAwC6BusNkB",
        "FplH0wiaFTV",
        "a5jMaxCJjgA",
        "YDIL4Y1FSCo",
        "CKa2FS0iDRI",
        "NabyghVp4VJ",
        "P5cKRXLm97f",
        "L7n1gUHXZcb",
        "XPH9vYhj0Fn",
        "c8zYpuAPnTC",
        "sjmBRSrTtXo",
        "lobkNsJVLCL",
        "zVbWx8JeIAF",
        "PKHThMNxyap",
        "AMuXiz3D2xw",
        "XGwzTk0UUux",
        "RYLM6Mf80Kr",
        "B4VC1uiWtI7",
        "VrHVKNmBBdb",
        "Op7hWs7hEne",
        "a55GXAr8Pk0",
        "JiNqEyoDAnj",
        "KY61JXu9TV6",
        "Ekr2uQIoMUK",
        "qD4Myzmfxjm",
        "Sq1etUwlaui",
        "Ad3miePku2a",
        "y5w1IEwEXUY",
        "Ap26AWTa676",
        "JcQUdpFpZJ5",
        "Dmd3XyapHEd",
        "o6YIf11bx0E",
        "x4kGEP2bYdN",
        "UAfrZhQ1dku",
        "GsvhqMw2c7C",
        "Y1wNVk8g5PU",
        "CMF1qXbRTG8",
        "qFCR4vjkqzG",
        "w4JVxBBbGS2",
        "ZmvapRHWKNp",
        "rAiyizGqUnx",
        "aYeogjg2PkW",
        "OuHEN5XLZuK",
        "CYgCKMRxKYc",
        "dXyAHv9xr53",
        "HOULH6o9MBh",
        "U3A2pWBQErG",
        "hcdEMFbdMed",
        "TZLB7tFfxPj",
        "uXSkcWW6QFq",
        "GKxeAEIWqSg",
        "hMlxo9EqJwx",
        "awlL41DKe5q",
        "hncnIjayry7",
        "DKtF2EUfd79",
        "ulYfJAjJqUU",
        "PiiGB0y5F4p",
        "KlA1w7REHfa",
        "GVD2zJYGWqC",
        "FR0z7RYCUP1",
        "R6Q1vN0IrVD",
        "fI8b4m76x3l",
        "Jcq65mudqPP",
        "P9pjKJmr7zL",
        "EVxpxwW46K0",
        "BchfNSTA4SH",
        "CzEDP7d8FCc",
        "lDxCExYIE3B",
        "nzC8q9pSPHt",
        "dDY4hzx4qDZ",
        "lyyw5B8qvRL",
        "YwMys7dayto",
        "VoHfADJAC9l",
        "MWYiuyLDuNm",
        "oDCffa83f2E",
        "MP11iGufNXm",
        "JaSHi0njajj",
        "RH1FcZlSG6h",
        "Swt4AKc039Y",
        "Uw4DooapXOG",
        "HJCv73cKqeX",
        "cX2oUVHl4LC",
        "pSCCnINL7M5",
        "GIrHQJR8NfW",
        "RVuh3vfD8lr",
        "JpJ8ii8Z9Kj",
        "CfDCXwQhnIc",
        "HWddMXpEzJh",
        "SZokBh1OmTY",
        "hh3KCTarXa7",
        "fUbvBqDmPv5",
        "A9Y5xEeraGa",
        "BFURBZuDA1b",
        "kbx8b03uMEA",
        "q1OZc1JDm2Q",
        "e5RK2ATpa7a",
        "fJ6aYIUwail",
        "aRfY2fZMy9q",
        "a8ydExbdOSg",
        "vPMmijVz301",
        "qPVGsS9DlnG",
        "eQDndFM6Jxk",
        "r1wOqzCVmjn",
        "oesU4P4dvzE",
        "qNMyiLZOuwm",
        "beuNZe00QP1",
        "iSCjggWkI68",
        "sM5GBDPYggy",
        "B8yJYNe7Hpx",
        "k8uehECuH6q",
        "Iy8Z4uAliY4",
        "qGF3QA0jaWw",
        "x789jzmUDK3",
        "Ffa2WfqW1KV",
        "ZShAcgK7LDz",
        "jOALOLQH1P9",
        "uxjRAFcWFFq",
        "ebB1EKRNDg4",
        "D9WwNZN56hz",
        "ZAN42Y68QfV",
        "CDtwQNFI4I8",
        "HgJGo3TSk5D",
        "LCI7MMDDJEl",
        "JKxJtm4ft9F",
        "CoFkdHKlsI8",
        "XNUOl8Qd3Sx",
        "YlHhr47OSkU",
        "t9zKJc4fGtz",
        "eIE3cnVy0ik",
        "f44ZX9cEhjF",
        "BOydDKxr587",
        "qkxG4glKCXG",
        "rnHEWtG5lln",
        "g91UVHcCVNG",
        "e96LsUawZqE",
        "fNTPDG7I3cl",
        "ysuNnKyfipu",
        "PH5a1TxYb5B",
        "Ml806hdmsPm",
        "F7nOpoZwC8V",
        "o1kX8zybxeu",
        "V83I2vw1KGR",
        "JZiPC5x6suZ",
        "ptLFPmhcXsv",
        "f6FzbZJMp7l",
        "nwzYQ6gM7BD",
        "cleDcKWhNzs",
        "OIXtZ4xIfJe",
        "Flu3ts0Mm1B",
        "emHPeq0UWNk",
        "yZCQusgwzdu",
        "FyNZVOS7eD1",
        "BLlgNpn15Jb",
        "jw0wQdZtCtf",
        "EUA32uwViiA",
        "Ewxxzi5icW0",
        "pGH4ZVI0fn5",
        "WzGqY9XVUbm",
        "tekbauT8LN9",
        "kp4RRP7vqdg",
        "o3JBKAeOVcO",
        "VY7GFMBffYl",
        "BHuG4AXpPQb",
        "SI1RqdihnQE",
        "QeS86EJQGwW",
        "DlsgyRjE05T",
        "W7nRzQIRXyc",
        "ZcxPty4Ts8V",
        "sJ9NJN0pcyy",
        "nrz4YcTudkN",
        "qUl8M1fXfHm",
        "ikrLZi4sz9I",
        "yxWSX3lfGVO",
        "jtiJmSZY8dJ",
        "SS5Ac59eC5O",
        "hzkmjcnX3oH",
        "qTUgPntHf0w",
        "VSSsOXiQZOv",
        "kQOc3wiZUFK",
        "iUCMAU6ZGZy",
        "AdM9TNpHOqG",
        "dOh7eIjeJmD",
        "xFSLshB17GX",
        "H0RHdpJWTlD",
        "yNilXLK4UmO",
        "iyEI3SnlrD8",
        "EeI4rfgEArU",
        "sJttTqR5qk8",
        "JATeJcEB8Vj",
        "NpdHQbJGFCn",
        "P2krMyJZvop",
        "sb2p3vSyGuI",
        "z5iMSVgYUdF",
        "bEi7WNshXCB",
        "WxTSqgCJyRc",
        "IDzU3VlFGEY",
        "T7gT5kK29ot",
        "tAEietfWkDT",
        "gGvJbd1j4bc",
        "cMmFKUlKlHC",
        "ZqH9LyLHoDz",
        "SXWcNEnk4Os",
        "ibShKDXq5To",
        "sCBGguRaS1y",
        "wmLbcjHCKWC",
        "aqpoP8lR3Ng",
        "lwp2IbDwBzB",
        "OCHT51PIYjU",
        "prcksNi5VO5",
        "UGO5QxDMDAa",
        "J1LSuXMtNXF",
        "vxZjhrbIueV",
        "kw2f2igsMPq",
        "EcLIug6BetA",
        "sCF7dWgMuIo",
        "WiajsnWK4Em",
        "BERu5LdxCYH",
        "P0XOz2AAe2p",
        "WD9EcRvyLyw",
        "UJnGSISmyFu",
        "dfe8zc1a0ht",
        "NBNHJROJzzd",
        "n3VZQGEj0D3",
        "qfohYBxpUw6",
        "SBGUAV0zEmY",
        "KJfRdMwr4LG",
        "ONuXVuD8ZEo",
        "JvgS0HCAAG5",
        "yApOJ7yfgDY",
        "zk7v6EvWm5F",
        "wh6MVZ9wQks",
        "UPhxwv0scua",
        "Ov0OFJS4wYe",
        "pTBKAnpdkYv",
        "fi1oevL4lFb",
        "Ss27wz1c9NE",
        "DBEkz2JHuRT",
        "Noqqv7A9Pb9",
        "ZDMCKpD3ziV",
        "lWJWcDJ48Ch",
        "ZIs3md28inp",
        "rYehavqyj0x",
        "L6j3dfAEuPb",
        "mcx9FhzOWOs",
        "jjsiAAGlSNz",
        "bIGYqNyojlB",
        "UAngGZBGBqu",
        "ErW29CIiLse",
        "qhC5OQ4YFYm",
        "c3M2Wj87WpC",
        "haWENbQFwk7",
        "sC6f2wzSZ4o",
        "ZBQQ2ny1iGV",
        "w6Y9fZGvEGC",
        "SUaflDKRqNY",
        "OwFlhxn5SxA",
        "Oy5lTIa919K",
        "V5x40kwOYpv",
        "IWhTGRUb6Pi",
        "i2FTzBiGp8I",
        "BshCJr7nnOR",
        "mL7NGfRYuqM",
        "mdg1XI6ytu2",
        "X0swnv7W7ix",
        "iwACK7Kp0Cy",
        "Tg7ownLi6aj",
        "hBwNscMbJH7",
        "fitCydVg62b",
        "nAWhYcoEnJt",
        "vHCmBXUTK3V",
        "Ii5d9vgMF2i",
        "HMMOxOFDyCD",
        "x52NMMg9hX3",
        "Rg2ZV5yEzCN",
        "hg0WapQbZLn",
        "pa89fCwTfrP",
        "JYMuDIGjotP",
        "HgLlZewmo2h",
        "S9XfOrKYu2E",
        "C2XuQ0NwaMy",
        "uF4bJqPBGUA",
        "ISHt0JQONtO",
        "jdGcQ5Nz3Lz",
        "JoTg70tcU8Z",
        "sVAvFwJODE8",
        "AO9uU9H3onG",
        "tQzMeiasypJ",
        "zF47v7S7dPv",
        "tdcUYMUA6B9",
        "D4JmhhGwe8T",
        "Y8fAOQ00Txo",
        "JboDGaapSE5",
        "fEuMKHwrFFb",
        "ejdk6fFTZDa",
        "BEqwcMzFji7",
        "sXGXlVckcb8",
        "MiiVXQc3o6I",
        "T6o3pkprPwF",
        "OhIai4df0bU",
        "FDTWXtQ0z91",
        "VIDJGAwYEkb",
        "kiEyoJuobFA",
        "c3U86COKk0i",
        "db5jaPFnBYD",
        "QVuLAUj94aC",
        "RcnhdznSTFh",
        "xsUPUPehua3",
        "tCdIazlPSsT",
        "U1M5zDPAf4u",
        "TpCniu6CCxF",
        "IDYTFUOAuH4",
        "fKGsc1WTTCv",
        "AnEMb1RUrNQ",
        "POdLfpambDL",
        "laBDZ5Qaxh1",
        "VJWcrgJEkll",
        "pOY9F5xqxWF",
        "EHWNTwEZ1EK",
        "NBspHggMCuT",
        "XONWMF9shvT",
        "G8dcfFkY2Rg",
        "hRjjfvoMlJn",
        "yEUPyEz7vf4",
        "vH0eT0eketr",
        "KnFUfYrKfJG",
        "peTKt9WINBP",
        "IvCCeeBq1F4",
        "qfUd6axymmQ",
        "EDdAvgKewm0",
        "iyNWtq5B2se",
        "sav7IKPnWgI",
        "NeTNAqUDI89",
        "pRlZ3C1GEo5",
        "kbQE20huuE0",
        "OLQW4Oe5rle",
        "yvQg2szjyFY",
        "pTbz16wdXul",
        "MVm5BZdfqom",
        "NEJbBY69E79",
        "aSpnnFmZcLg",
        "I7hlLDdMdYY",
        "iYt744QP68e",
        "qo5Rdz4hPzQ",
        "wGVLeV3mwJC",
        "BCnQnGtFur7",
        "YoNQinEDmEy",
        "lAMHoXmcKth",
        "HVHEuGTfXeN",
        "qCQbMHcVcLm",
        "PPAOX3rfdRf",
        "EdCKjUugg3U",
        "h93MHFmYnod",
        "WXsrkaJSs5c",
        "CrZHcWh9K08",
        "HjZJWgak0Nh",
        "QB2Kr3hJwiq",
        "LPh1GAPM4Bb",
        "D0fpsFsITcJ",
        "OiiZyioBekK",
        "ShwQWM3zgOi",
        "MBRicoonzjI",
        "j3Go9m2wHZf",
        "NJnCWe4Y1BJ",
        "bS0NxNfjX51",
        "fFR45LuIckv",
        "YCEyRUYxMTo",
        "y5NgNU7KfKE",
        "fjJJIZpjsf5",
        "IxVVuI9eP8E",
        "j889Jeq0myp",
        "bdVfOBISRYr",
        "Emw5M2CuFD0",
        "NUdP5IRBSgT",
        "OR1GmlHGdhK",
        "pdi0TiP3xtP",
        "LH7FJHU2vQH",
        "aaF5d5eWAr0",
        "FxwDZBRJz2B",
        "rKSsIYdL57n",
        "YMNsMKoAlDy",
        "V4wassiqOub",
        "e32XLtljIgu",
        "RmdBTTRo9yN",
        "Y794JeUPFDy",
        "yXGbrhJb8XY",
        "Gg5kxPkrLhM",
        "Dg2NPB20fmJ",
        "LnSQHvNLYDl",
        "yAs0zvrLuCu",
        "IKhC4NJyA8Y",
        "Ri2PR5HAx8X",
        "elX4V7qqfW4",
        "W6QKGxwuZ6c",
        "NgJQQ7AaH8T",
        "RZI0Sb4wLjN",
        "SwpP4sqqoiE",
        "EpwtBO64YPU",
        "WHBSpM36F4m",
        "OtBdH82MVSK",
        "YZ3unuglONU",
        "g4NYh2rSlHm",
        "jHlkbqeVaXp",
        "umxcnHiWAaA",
        "uDngcbrsdTK",
        "xWjFG4LLwwN",
        "g870HdpL9Bw",
        "gwvBsQrqkZG",
        "YYPzpjjzBwo",
        "Ie7cPivJ1gE",
        "Atxmb7OVUJa",
        "oDfLDcDDDfu",
        "QA7AVrSy6qW",
        "VYkUuJs9VYR",
        "blH3R5QE4rB",
        "vMyUzrGqSF1",
        "uAk4yEqlWYK",
        "ov6hZYTo6NO",
        "SDmksDNC8LE",
        "tAH5qBHoryp",
        "ninev79IZfj",
        "gIBQ31o6gDc",
        "DcLMYFTjXcJ",
        "YgjwY1nqISe",
        "KjQDqNkHPZ6",
        "QXxThyMQ5Mg",
        "xwuoCoH1IXX",
        "O2zUAEX3ouU",
        "uJzw6mgp2s0",
        "ZrsrT4rZhhp",
        "JcERex8hsAj",
        "oJCPAiP0BPk",
        "RRigKI5Qi5r",
        "yDdiODqPXGu",
        "aHhovWYEPYW",
        "Vpzg0x0KYOl",
        "cVRSvGrSr0s",
        "V6YXpMuFtml",
        "CLnTBP0A05S",
        "ZxNo1Gjdw6f",
        "qdt649mu22w",
        "LbuXjXWElwb",
        "VHSZKpGQn9b",
        "QS0FuHfYGkM",
        "krTk703DtvA",
        "cE0pX8Tq0B2",
        "ZQXTrtp8Zyp",
        "r6CJ2MG3FyR",
        "kW3eQ2Jhzz0",
        "GA10RCZxs4M",
        "t9chjgH67ET",
        "qrwOnFvy1VG",
        "iQeaUlECTqy",
        "hXeGHvqXwU7",
        "D1I4YoxuF7T",
        "Qr0DL4lfVkM",
        "ddSjzeReP53",
        "E1wJvlDnAl0",
        "w4SVMUzQdPW",
        "QeuxI3CS4og",
        "KlFgAKEGZD6",
        "jxvj2KKgTF9",
        "OqJScBICtPo",
        "x0XR33i9bJD",
        "reqeHSOcyfx",
        "bAyyupVkAGr",
        "h2yp7wUaWFx",
        "nn9y9nzN0jt",
        "r3FavUq4Abx",
        "LDx5dLYFRDb",
        "scCGN5E2sF8",
        "BRIbCIrNmcx",
        "eQyH0nHnPpE",
        "K4w76mBjklQ",
        "QYF8vrwTyFq",
        "kSuaUIm6AK0",
        "bhnsrdYrPm1",
        "jBIVDFT42Dp",
        "SLjax6zwSKY",
        "IirMcksUF1Y",
        "LC6HR34RCTR",
        "Qoa8D7XasTq",
        "G0j9EHrPeOW",
        "OX2yhGHJTSA",
        "o1ckXo9C5RO",
        "bQ4MoaxSSih",
        "b0lgQOzqYCh",
        "pN0gqWu56Ml",
        "aA46exgbYWq",
        "xZJZdNhWlaD",
        "mG5Pny39IhC",
        "b0Rns8k9CnX",
        "jpkD3CRzKyJ",
        "pJpGMZXLLul",
        "hBHejhAx8En",
        "ZRFWQrxrALz",
        "QwSpjcehdrW",
        "lLxoaAXYvUr",
        "b77aj8R9c11",
        "onf8Jv5TrNE",
        "NOTNabgEOAJ",
        "aoBJCtmi5JA",
        "FnqgG8bU7nf",
        "JhA9RedEe75",
        "vIBD3saz1xB",
        "Q2vZGwhoFKW",
        "zebYcAH5XDP",
        "vCJ0KQKUNPB",
        "Eg5F18GFzXU",
        "wkMveyWDrXW",
        "IfWArz1JeQO",
        "cN2bMffHDLC",
        "VwFB86wMOOv",
        "cABturggcBY",
        "B4cVIrykS0H",
        "WUFh1lqQtBS",
        "vHyYguK9gs1",
        "UmVYL1G4s5k",
        "TpbfK5WRpAP",
        "HIjobSwayVh",
        "DoVQ3QkbzVd",
        "xOPkDACTAkD",
        "MJ2eoVghsoS",
        "bHNeAz94sxh",
        "FLkJvN5cs71",
        "eBhXPGk7NF4",
        "lAkKvSNb2aL",
        "rBPS5WV6v5n",
        "ZOHYYjOBJXz",
        "xgN5Jsik7AD",
        "bXokD4DJdur",
        "P0nT0YHfXXL",
        "hDT6qXnXyed",
        "jm3rpq7Euxp",
        "GoS8bvFlCC2",
        "mnaFSb6vzUC",
        "bFXT2NEnKyh",
        "lO89fqVvSIr",
        "nARfG6761Rt",
        "gH7IiHO7YeG",
        "yhivlbRi8YY",
        "bFPomiK3NT1",
        "u6OO53i5r3U",
        "hl6QB5ZPpVn",
        "zXsQg2FVVk5",
        "jYwJBN0n4Ap",
        "yZCm1nwslVu",
        "DrNesqzcEKd",
        "TGY7J8XXnGF",
        "luonc66uwj1",
        "ndFgPDvJAtN",
        "PK0Kt89FSJp",
        "ha5eP0zgRvx",
        "PanzVGnfwtB",
        "fF94ZznUhhF",
        "iuvLQniMYaI",
        "EUNEBRruszU",
        "bH3jMzR9URr",
        "P5TPKfrChcV",
        "VR0RuI1Cf4v",
        "I14cEoaEEiO",
        "oIW4su9sHZ4",
        "jqLcg5PUiiz",
        "qolQTRtEdAw",
        "eWvPEzXRAau",
        "yJb3p8KBFu4",
        "f4BeN9INRHb",
        "McoqfvRlK9m",
        "KsMGMAAc0ck",
        "dqlVIJGPfEt",
        "t29QJZVc7Iz",
        "JLr23TWlHM5",
        "bw0nV67xMu1",
        "ss1XPZut01o",
        "CDjNfy0iRwy",
        "l2y2i6IHHBB",
        "BtZaA4Phle7",
        "UzEfbiPPZfa",
        "N4gh6SL86Z9",
        "cBVPsi5xgRC",
        "aLx8dB3W50W",
        "gdCZiZarnPm",
        "fI92Pu3D47b",
        "f5vpZeIDW8b",
        "JuI215w3eaF",
        "EX8RqiY5R0K",
        "YgXcN8Qckte",
        "L4KgGVRXVGb",
        "ZxqkeusHuIp",
        "cRLQbsIR0As",
        "mUOWGZbMjVs",
        "HFpD8lhMlN3",
        "PyMxWIAJmHf",
        "eVw3REkp0v4",
        "p8qY1rx1PRF",
        "z3w5FoCcupv",
        "J9nFiUzUbsZ",
        "Oq0WaN3xlxK",
        "ePozH59PbMu",
        "KntRafwH3hk",
        "GtrIh6MKrpW",
        "LCkYiQqGcrl",
        "ebrtDx0CgPE",
        "KjVowk8hlqk",
        "oBW03H5nivu",
        "ti2hWJEnA6z",
        "jyWSyVAGeFf",
        "QFSIlvXx9Fg",
        "kXmRgFgwfVg",
        "s3VQg3t6mPS",
        "GxGZF4xyxL2",
        "MHbZ3NE0SGm",
        "vQONSsz3AF1",
        "mEGtfUPVgfC",
        "kD54S9VDvP0",
        "lDg4hyF5Yp1",
        "dd0vrvJud4D",
        "GC3KVEyBcvM",
        "JRIuPPXPb0j",
        "SpQH1eoDaNi",
        "doj1Y4HH1s3",
        "B8RiTGy6Emb",
        "ZruF5gkrHVp",
        "ZIskroqCSQz",
        "PRFjVQBPC1p",
        "xGUKGkU5ZBX",
        "mg3rwU9JkDM",
        "MQVeo5Cljum",
        "maAB3ljJGK2",
        "PegnzBQ0oWp",
        "VdRJVsAd5mv",
        "GGBmjCGYagg",
        "r7Z22izj4Lx",
        "ybHdotfpjA4",
        "KcbZgB3ynnQ",
        "uIgxWjHcnN0",
        "hQtZEuR8Ymd",
        "ucbqAnQbCSK",
        "UCKDfti9r2k",
        "awnYzoTEqRq",
        "VvzgvpbLK0H",
        "mYy78gsEVo2",
        "vDjEvft1xQ1",
        "tYfsGztEARJ",
        "fwscdIulxMl",
        "lr7pJ3dt6OB",
        "N5MsXv1m5BT",
        "o258jQljgPO",
        "Xu8w0D8Je1d",
        "feGBDiPT2Ib",
        "WDl41ZEbDCS",
        "sV3nAN42Wao",
        "AMYFuOUJos6",
        "oaQZ9FeEuR4",
        "ksCajZc1mRA",
        "sg0po2tgw6o",
        "vhXdSE52hm1",
        "zeBllHvWpVZ",
        "w2a1zEgP43s",
        "eUd8txpCArk",
        "olYIDHOe2fO",
        "UVnnehj1cpQ",
        "XPTC3OWFCsd",
        "xdvpIDtE09D",
        "Gefxhiix5kW",
        "vsMIjEe4j9r",
        "rcCyju56EuH",
        "FqamABRlLn1",
        "CM2dnky0oLI",
        "HJBquyGJBFh",
        "ANaSr9TBTe6",
        "D3eyx2pFXIJ"
      ],
      "label": {
        "en": "Health Facility Monthly Stock Report",
        "ar": "التقرير الشهري للمرافق الصحية"
      },
      "displayName": "التقرير الشهري للمرافق الصحية",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-30T21:42:50.119Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-30T21:42:53.197Z",
      "id": "66ca45535cb4e10a1b88dffd",
      "uid": "Kcs3346CRbY",
      "code": "TEST_FORM",
      "name": "test form",
      "description": "Test Countries Form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 3,
      "defaultLocal": "en",
      "fields": [
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "continentQ",
          "fields": []
        },
        {
          "order": 0,
          "name": "countryQ",
          "description": "Country",
          "type": "SelectOne",
          "mandatory": true,
          "mainField": true,
          "rules": [],
          "listName": "countries",
          "referenceInfo": null,
          "choiceFilter": "continentFilter == #{continentQ}",
          "label": {
            "en": "Country",
            "ar": "الدولة"
          },
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "countryQ",
          "fields": []
        },
        {
          "order": 0,
          "name": "cityQ",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [],
          "listName": "cities",
          "referenceInfo": null,
          "choiceFilter": "countryFilter == #{countryQ}",
          "label": {
            "en": "City",
            "ar": "المدينة"
          },
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "cityQ",
          "fields": []
        }
      ],
      "options": [
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
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-29T23:12:06.258Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-29T23:13:07.886Z",
      "id": "66cfb1604ece1975029b7797",
      "uid": "bo9rJr1TNg1",
      "code": null,
      "name": "bookkeeping",
      "description": null,
      "disabled": false,
      "activity": "U42up6b3mbG",
      "version": 1,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "mainSection",
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.transaction",
              "fields": []
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.transactionDate",
              "fields": []
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
                  "expression": "#{transaction} == 'supply' || #{transaction} == 'dispense' || #{transaction} == 'return'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.voucherId",
              "fields": []
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
                  "expression": "#{transaction} == 'supply' || #{transaction} == 'dispense' || #{transaction} == 'return'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.voucherDate",
              "fields": []
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.supplier",
              "fields": []
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
                  "expression": "#{transaction} == 'dispense' || #{transaction} == 'return'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.distinationWarehouse",
              "fields": []
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
                  "expression": "#{transaction} == 'dispense'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "mainSection",
              "path": "mainSection.recievedBy",
              "fields": []
            }
          ]
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "stockItems",
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
                  "expression": "#{transaction} == 'supply'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.batchNumber",
              "fields": []
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.stockItem",
              "fields": []
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
                  "expression": "#{transaction} == 'supply'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.barcode",
              "fields": []
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
                  "expression": "#{amount} > 0",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.currency",
              "fields": []
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
                  "expression": "#{transaction} == 'inventory'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.inventoryQuantity",
              "fields": []
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
                  "expression": "#{transaction} == 'supply'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.recievedQuantity",
              "fields": []
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
                  "expression": "#{transaction} == 'dispense'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.deliveredQuantity",
              "fields": []
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
                  "expression": "#{transaction} == 'supply'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.expiryDate",
              "fields": []
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
                  "expression": "#{transaction} == 'return'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.returnedQuantity",
              "fields": []
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
                  "expression": "#{transaction} == 'expiry'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.expiredQuantity",
              "fields": []
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.uom",
              "fields": []
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
                  "expression": "#{amount} > 0",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.unitPrice",
              "fields": []
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
                  "expression": "#{transaction} == 'supply'",
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
              "calculation": null,
              "defaultValue": null,
              "section": "stockItems",
              "path": "stockItems.amount",
              "fields": []
            }
          ]
        }
      ],
      "options": [
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
          "listName": "stockItems",
          "name": "ACT80MG",
          "order": 0,
          "label": {
            "en": "ACT80MG",
            "ar": "كوارتم 80"
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
          "name": "Tablet",
          "order": 0,
          "label": {
            "en": "Tablet",
            "ar": "قرص"
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
          "name": "ACT20MG",
          "order": 0,
          "label": {
            "en": "ACT20MG",
            "ar": "كوارتم 20"
          },
          "properties": {}
        }
      ],
      "orgUnits": [
        "awgKZaDoWLA",
        "YCEyRUYxMTo"
      ],
      "label": {},
      "displayName": "bookkeeping",
      "translations": []
    },
    {
      "createdBy": null,
      "createdDate": "2024-08-30T21:42:50.113Z",
      "lastModifiedBy": "admin",
      "lastModifiedDate": "2024-08-30T21:42:52.750Z",
      "id": "66ca3d066ce8a30565e03599",
      "uid": "KcsA3KETRbY",
      "code": "CHV_PATIENTS_FORM",
      "name": "استمارة تدبير حالات الملاريا",
      "description": "CHV cases registering form",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 13,
      "defaultLocal": "en",
      "fields": [
        {
          "order": 0,
          "name": "name",
          "description": "Name of the patient",
          "type": "FullName",
          "mandatory": true,
          "mainField": true,
          "rules": [
            {
              "expression": "#{name.length} >= 9",
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "name",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "visitDate",
          "fields": []
        },
        {
          "order": 0,
          "name": "age",
          "description": "Age in Years and (months for age less than 1 year)",
          "type": "Age",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "#{age} <= 0 || #{age} > 100",
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "age",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "gender",
          "fields": []
        },
        {
          "order": 0,
          "name": "pregnant",
          "description": null,
          "type": "Boolean",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "#{gender} == 'FEMALE' && #{age} >= 14",
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "pregnant",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "testResult",
          "fields": []
        },
        {
          "order": 0,
          "name": "detectionType",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "detectionType",
          "fields": []
        },
        {
          "order": 0,
          "name": "severity",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "severity",
          "fields": []
        },
        {
          "order": 0,
          "name": "treatment",
          "description": null,
          "type": "SelectOne",
          "mandatory": true,
          "mainField": false,
          "rules": [
            {
              "expression": "#{severity} == 'SEVERE'",
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
              "expression": "#{pregnant} && (#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX')",
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
              "expression": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "treatment",
          "fields": []
        },
        {
          "order": 0,
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
          "calculation": null,
          "defaultValue": null,
          "section": null,
          "path": "comment",
          "fields": []
        }
      ],
      "options": [
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
      "translations": []
    }
  ]
};
