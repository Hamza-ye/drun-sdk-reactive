final Map<String, dynamic> dSampleAllForms = {
  "paging": false,
  "page": 0,
  "pageCount": 1,
  "total": 6,
  "pageSize": 6,
  "dataForm": [
    {
      "id": "Tcf3Ks9ZRpB",
      "uid": "Tcf3Ks9ZRpB",
      "code": "LLINS_DISTRIBUTION_FORM",
      "name": "استمارة توزيع الناموسيات | منازل | فريق ميداني",
      "description": "استمارة ارسال بيانات توزيع الناموسيات على مستوى المنزل، ترسل من قائد الفريق.",
      "disabled": false,
      "deleted": false,
      "version": 22,
      "defaultLocal": "en",
      "fields": [
        {
          "name": "mainSection",
          "type": "Section",
          "description": "Main Section.",
          "label": {
            "en": "Work Date and Day",
            "ar": "بيانات أساسية"
          },
          "rules": [],
          "order": 0,
          "mandatory": false,
          "readOnly": false,
          "mainField": false,
          "fields": [
            {
              "name": "workDay",
              "type": "SelectOne",
              "description": "Day of work for the campaign.",
              "label": {
                "en": "Work Day",
                "ar": "اليوم"
              },
              "rules": [],
              "calculation": null,
              "order": 1,
              "defaultValue": null,
              "mandatory": true,
              "readOnly": false,
              "appearance": null,
              "constraint": null,
              "constraintMessage": null,
              "mainField": true,
              "listName": "workDays",
              "choiceFilter": null
            },
            {
              "name": "status",
              "type": "Progress",
              "description": "Distribution Status",
              "label": {
                "en": "Select status",
                "ar": "حالة سير عملية التوزيع"
              },
              "rules": [],
              "calculation": null,
              "order": 2,
              "defaultValue": null,
              "mandatory": true,
              "readOnly": false,
              "appearance": null,
              "constraint": null,
              "constraintMessage": null,
              "mainField": true,
              "listName": "status",
              "choiceFilter": null
            }
          ]
        },
        {
          "name": "completion_details",
          "type": "Section",
          "description": "Status",
          "label": {
            "en": "Completion Details",
            "ar": "معلومات اكتمال التوزيع"
          },
          "rules": [
            {
              "expression": "#{status} == 'DONE'",
              "action": "Show"
            }
          ],
          "calculation": null,
          "order": 3,
          "defaultValue": null,
          "mandatory": false,
          "readOnly": false,
          "appearance": null,
          "constraint": null,
          "constraintMessage": null,
          "mainField": false,
          "fields": [
            {
              "name": "completionStatus",
              "type": "SelectOne",
              "description": "Completion Status",
              "label": {
                "en": "Completion Status",
                "ar": "حالة الاكتمال"
              },
              "rules": [],
              "order": 4,
              "mandatory": true,
              "readOnly": false,
              "mainField": false,
              "listName": "completionStatus"
            },
            {
              "name": "completionPercentage",
              "type": "IntegerZeroOrPositive",
              "label": {
                "en": "Completion Percentage",
                "ar": "% نسبة الاكتمال"
              },
              "rules": [
                {
                  "expression": "#{completionStatus} == 'PARTIAL'",
                  "action": "Show"
                },
                {
                  "expression": "#{completionPercentage} > 100 || #{completionPercentage} == 100",
                  "action": "Error",
                  "message": {
                    "en": "Completion percentage must be between 0 and 100",
                    "ar": "الجزئي معناه أن يكون نسبة الاكتمال بين 0 و أقل من 100"
                  }
                }
              ],
              "order": 5,
              "mandatory": true,
              "readOnly": false,
              "mainField": false
            }
          ]
        },
        {
          "name": "status_reassigned_details",
          "type": "Section",
          "description": "status_reassigned_details",
          "label": {
            "en": "Reassigning Details",
            "ar": "معلومات إعادة تعيين فريق آخر"
          },
          "rules": [
            {
              "expression": "#{status} == 'REASSIGNED'",
              "action": "Show"
            }
          ],
          "order": 6,
          "fields": [
            {
              "name": "targetedByOtherTeamName",
              "type": "Text",
              "description": null,
              "label": {
                "en": "Team name targeted by",
                "ar": "اسم الفريق الذي قام بالتغطية"
              },
              "rules": [],
              "order": 7,
              "mainField": false
            },
            {
              "name": "targetedByOtherTeamNum",
              "type": "Text",
              "description": null,
              "label": {
                "en": "Team No. targeted by",
                "ar": "رقم الفريق الذي قام بالتغطية"
              },
              "rules": [],
              "calculation": null,
              "order": 8,
              "defaultValue": null,
              "mandatory": true,
              "readOnly": false,
              "appearance": null,
              "constraint": null,
              "constraintMessage": null,
              "mainField": false
            }
          ]
        },
        {
          "name": "status_cancelled_details",
          "type": "Section",
          "description": "cancelling_details",
          "label": {
            "en": "Cancelling Details",
            "ar": "معلومات إلغاء التوزيع"
          },
          "rules": [
            {
              "expression": "#{status} == 'CANCELLED'",
              "action": "Show"
            }
          ],
          "order": 9,
          "mandatory": false,
          "readOnly": false,
          "mainField": false,
          "fields": [
            {
              "name": "notargetingReasons",
              "type": "SelectOne",
              "label": {
                "en": "no targeting Reason",
                "ar": "سبب عدم الاستهداف"
              },
              "rules": [],
              "order": 10,
              "mandatory": true,
              "readOnly": false,
              "mainField": false,
              "listName": "notargetingReasons"
            },
            {
              "name": "otherReasonForNotargeting",
              "type": "Text",
              "label": {
                "en": "UnTargetting Reason",
                "ar": "اذكر السبب الاخر"
              },
              "rules": [
                {
                  "expression": "#{status} == 'CANCELLED' && #{notargetingReasons} == 'OTHER'",
                  "action": "Show"
                }
              ],
              "order": 11,
              "mandatory": true,
              "readOnly": false,
              "mainField": false
            }
          ]
        },
        {
          "name": "status_merged_details",
          "type": "Section",
          "description": "location Status Details",
          "label": {
            "en": "Status",
            "ar": "تفاصيل حالة دمج"
          },
          "rules": [
            {
              "expression": "#{status} == 'MERGED'",
              "action": "Show"
            }
          ],
          "calculation": null,
          "order": 12,
          "defaultValue": null,
          "readOnly": false,
          "appearance": null,
          "constraint": null,
          "constraintMessage": null,
          "mainField": false,
          "fields": [
            {
              "name": "mergedWithOtherVillage",
              "type": "Text",
              "description": null,
              "label": {
                "en": "Merged with village",
                "ar": "اسم القرية الاخرى التي تم دمجها"
              },
              "rules": [],
              "calculation": null,
              "order": 13,
              "defaultValue": null,
              "readOnly": false,
              "appearance": null,
              "mandatory": true,
              "constraint": null,
              "constraintMessage": null,
              "mainField": false
            }
          ]
        },
        {
          "name": "status_rescheduled_details",
          "type": "Section",
          "description": "status_rescheduled_details",
          "label": {
            "en": "Status",
            "ar": "تفاصيل حالة إعادة جدولة"
          },
          "rules": [
            {
              "expression": "#{status} == 'RESCHEDULED'",
              "action": "Show",
              "message": null,
              "assignedValue": null
            }
          ],
          "calculation": null,
          "order": 14,
          "defaultValue": null,
          "readOnly": false,
          "appearance": null,
          "constraint": null,
          "constraintMessage": null,
          "mainField": false,
          "fields": [
            {
              "name": "rescheduledTo",
              "type": "SelectOne",
              "label": {
                "en": "Rescheduled To",
                "ar": "جدولة إلى يوم:"
              },
              "rules": [],
              "order": 15,
              "mandatory": true,
              "readOnly": false,
              "listName": "workDays",
              "mainField": false
            }
          ]
        },
        {
          "name": "households_information",
          "type": "Section",
          "description": null,
          "order": 16,
          "label": {
            "en": "Households Information",
            "ar": "معلومات المنازل"
          },
          "rules": [
            {
              "expression": "#{status} == 'IN_PROGRESS' || #{status} == 'DONE'",
              "action": "Show"
            }
          ],
          "fields": [
            {
              "name": "settlement",
              "type": "SelectOne",
              "label": {
                "en": "Setllement Type",
                "ar": "نوع التجمع"
              },
              "rules": [],
              "order": 17,
              "mandatory": true,
              "readOnly": false,
              "mainField": false,
              "listName": "settlementType"
            },
            {
              "name": "householdnames",
              "type": "RepeatableSection",
              "description": "Repeatable data for each household.",
              "label": {
                "en": "Household Data",
                "ar": "بيانات المنازل"
              },
              "rules": [],
              "order": 18,
              "mandatory": true,
              "readOnly": false,
              "mainField": false,
              "fields": [
                {
                  "name": "householdHeadSerialNumber",
                  "type": "IntegerPositive",
                  "description": "Household number or card number.",
                  "label": {
                    "en": "Household Number (Card Number)",
                    "ar": "رقم المنزل"
                  },
                  "rules": [],
                  "order": 19,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": false
                },
                {
                  "name": "inputmethod",
                  "type": "SelectOne",
                  "description": null,
                  "label": {
                    "en": "inputmethod",
                    "ar": "طريقة الادخال"
                  },
                  "rules": [],
                  "order": 20,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": false,
                  "listName": "inputmethods"
                },
                {
                  "name": "householdName",
                  "type": "FullName",
                  "description": "Name of the household head.",
                  "label": {
                    "en": "Household Name",
                    "ar": "اسم صاحب المنزل رباعيا"
                  },
                  "rules": [
                    {
                      "expression": "#{inputmethod} == 'addNew'",
                      "action": "Show"
                    }
                  ],
                  "order": 21,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": false
                },
                {
                  "name": "householdReference",
                  "type": "Reference",
                  "description": "Household Reference.",
                  "label": {
                    "en": "Household Reference",
                    "ar": "مرجع رب المنزل"
                  },
                  "rules": [
                    {
                      "expression": "#{inputmethod} == 'fromList'",
                      "action": "Show"
                    }
                  ],
                  "order": 22,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": false,
                  "resourceType": "OrgUnit",
                  "resourceMetadataSchema": "yHRk5tsCEK4",
                  "displayAttributes": [
                    "householdHeadSerialNumber",
                    "householdName"
                  ],
                  "allowedActions": [
                    "Add",
                    "Update",
                    "SoftDelete"
                  ]
                },
                {
                  "name": "population",
                  "type": "IntegerPositive",
                  "description": "Total population in the household.",
                  "label": {
                    "en": "Total Population",
                    "ar": "عدد السكان"
                  },
                  "rules": [
                    {
                      "expression": "#{population} != #{femalePopulation} + #{malePopulation}",
                      "action": "Error",
                      "message": {
                        "ar": "مجموع الذكور والإناث يجب أن يساوي عدد السكان الكلي.",
                        "en": "Males + Females must equal Total Population."
                      }
                    }
                  ],
                  "order": 23,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                },
                {
                  "name": "malePopulation",
                  "type": "IntegerZeroOrPositive",
                  "description": "Number of males in the household.",
                  "label": {
                    "en": "Male Population",
                    "ar": "سكان-ذكور"
                  },
                  "rules": [],
                  "order": 24,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                },
                {
                  "name": "femalePopulation",
                  "type": "IntegerZeroOrPositive",
                  "description": "Number of females in the household.",
                  "label": {
                    "en": "Female Population",
                    "ar": "سكان-إناث"
                  },
                  "rules": [],
                  "order": 25,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                },
                {
                  "name": "pregnantWomen",
                  "type": "IntegerZeroOrPositive",
                  "description": "Number of pregnant women in the household.",
                  "label": {
                    "en": "Pregnant Women",
                    "ar": "حوامل"
                  },
                  "rules": [
                    {
                      "expression": "#{pregnantWomen} > #{femalePopulation}",
                      "action": "Error",
                      "message": {
                        "ar": "عدد الحوامل لا يمكن أن يتجاوز عدد الإناث.",
                        "en": "Pregnant women cannot exceed total females."
                      }
                    }
                  ],
                  "order": 26,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                },
                {
                  "name": "childrenMaleCount",
                  "type": "IntegerZeroOrPositive",
                  "description": "Number of male children.",
                  "label": {
                    "en": "Children (Male)",
                    "ar": "أطفال-ذكور"
                  },
                  "rules": [
                    {
                      "expression": "#{childrenMaleCount} > #{malePopulation}",
                      "action": "Error",
                      "message": {
                        "ar": "عدد الأطفال الذكور لا يمكن أن يتجاوز عدد الذكور الكلي.",
                        "en": "Male children cannot exceed total males."
                      }
                    }
                  ],
                  "order": 27,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                },
                {
                  "name": "childrenFemaleCount",
                  "type": "IntegerZeroOrPositive",
                  "description": "Number of female children.",
                  "label": {
                    "en": "Children (Female)",
                    "ar": "أطفال-إناث"
                  },
                  "rules": [
                    {
                      "expression": "#{childrenFemaleCount} + #{pregnantWomen} > #{femalePopulation}",
                      "action": "Error",
                      "message": {
                        "ar": "عدد الأطفال الإناث والحوامل يجب أن يكون أصغر من أو يساوي عدد الإناث",
                        "en": "The number of female children and pregnant women must be less than or equal to the female population"
                      },
                      "assignedValue": null
                    }
                  ],
                  "calculation": null,
                  "order": 28,
                  "defaultValue": null,
                  "mandatory": true,
                  "readOnly": false,
                  "appearance": null,
                  "constraint": null,
                  "constraintMessage": null,
                  "mainField": true
                },
                {
                  "name": "displacedResidentsCount",
                  "type": "IntegerZeroOrPositive",
                  "description": "Number of displaced residents in the household, if any.",
                  "label": {
                    "en": "Number of Displaced Residents",
                    "ar": "النازحين"
                  },
                  "rules": [
                    {
                      "expression": "#{displacedResidentsCount} > #{population}",
                      "action": "Error",
                      "message": {
                        "ar": "عدد النازحين لا يمكن أن يتجاوز عدد السكان الكلي.",
                        "en": "Displaced residents cannot exceed total population."
                      },
                      "assignedValue": null
                    }
                  ],
                  "order": 29,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                },
                {
                  "name": "itns",
                  "type": "IntegerPositive",
                  "description": "Number of mosquito nets received.",
                  "label": {
                    "en": "Received Nets",
                    "ar": "الناموسيات"
                  },
                  "rules": [
                    {
                      "expression": "#{itns} > #{population}",
                      "action": "Error",
                      "message": {
                        "ar": "لايمكن ان يكون عدد الناموسيات اكبر من اجمالي عدد السكان",
                        "en": "The number of mosquito nets received cannot exceed the total population"
                      }
                    },
                    {
                      "expression": "((#{itns} > 0 && #{population} > 0) && (#{itns} <= #{population})) && (#{itns} != ((#{population} + (#{population} % 2)) / 2))",
                      "action": "Warning"
                    }
                  ],
                  "order": 30,
                  "mandatory": true,
                  "readOnly": false,
                  "mainField": true
                }
              ],
              "itemTitle": "معلومات منزل",
              "maxRepeats": 0,
              "minRepeats": 0
            }
          ]
        }
      ],
      "options": [
        {
          "listName": "status",
          "name": "IN_PROGRESS",
          "order": 1,
          "label": {
            "en": "In progress",
            "ar": "قيد التنفيذ"
          },
          "properties": {}
        },
        {
          "listName": "status",
          "name": "DONE",
          "order": 2,
          "label": {
            "en": "Completed",
            "ar": "اكتمل"
          },
          "properties": {}
        },
        {
          "listName": "status",
          "name": "REASSIGNED",
          "order": 3,
          "label": {
            "en": "Not Covered for a reason",
            "ar": "فريق آخر"
          },
          "properties": {}
        },
        {
          "listName": "status",
          "name": "RESCHEDULED",
          "order": 3,
          "label": {
            "en": "Not Covered for a reason",
            "ar": "جدولة ليوم آخر"
          },
          "properties": {}
        },
        {
          "listName": "status",
          "name": "MERGED",
          "order": 3,
          "label": {
            "en": "Merged With another",
            "ar": "دمجت مع أخرى"
          },
          "properties": {}
        },
        {
          "listName": "status",
          "name": "CANCELLED",
          "order": 3,
          "label": {
            "en": "Not Covered for a reason",
            "ar": "لن يتم التوزيع لسبب"
          },
          "properties": {}
        },
        {
          "listName": "notargetingReasons",
          "name": "DOESNOTEXIST",
          "order": 4,
          "label": {
            "en": "No Such Village",
            "ar": "لاتوجد"
          },
          "properties": {}
        },
        {
          "listName": "notargetingReasons",
          "name": "DESERTED",
          "order": 1,
          "label": {
            "en": "Deserted",
            "ar": "مهجورة"
          },
          "properties": {}
        },
        {
          "listName": "notargetingReasons",
          "name": "DISPLACED",
          "order": 0,
          "label": {
            "en": "Displaced",
            "ar": "نزوح الجميع"
          },
          "properties": {}
        },
        {
          "listName": "notargetingReasons",
          "name": "OTHER",
          "order": 6,
          "label": {
            "en": "Other Reason",
            "ar": "لسبب اخر"
          },
          "properties": {}
        },
        {
          "listName": "completionStatus",
          "name": "FULL",
          "order": 0,
          "label": {
            "en": "Full",
            "ar": "كلي"
          },
          "properties": {}
        },
        {
          "listName": "completionStatus",
          "name": "PARTIAL",
          "order": 1,
          "label": {
            "en": "Partial",
            "ar": "جزئي"
          },
          "properties": {}
        },
        {
          "listName": "inputmethods",
          "name": "fromList",
          "order": 1,
          "label": {
            "en": "from List",
            "ar": "اختيار من القائمة"
          },
          "properties": {}
        },
        {
          "listName": "inputmethods",
          "name": "addNew",
          "order": 2,
          "label": {
            "en": "Add New",
            "ar": "اسم جديد"
          },
          "properties": {}
        },
        {
          "listName": "workDays",
          "name": "6",
          "order": 6,
          "label": {
            "en": "Day 6",
            "ar": "السادس"
          },
          "properties": {}
        },
        {
          "listName": "workDays",
          "name": "2",
          "order": 2,
          "label": {
            "en": "Day 2",
            "ar": "الثاني"
          },
          "properties": {}
        },
        {
          "listName": "workDays",
          "name": "5",
          "order": 5,
          "label": {
            "en": "Day 5",
            "ar": "الخامس"
          },
          "properties": {}
        },
        {
          "listName": "settlementType",
          "name": "resident",
          "order": 0,
          "label": {
            "en": "Resiedent",
            "ar": "مقيمين"
          },
          "properties": {}
        },
        {
          "listName": "workDays",
          "name": "3",
          "order": 3,
          "label": {
            "en": "Day 3",
            "ar": "الثالث"
          },
          "properties": {}
        },
        {
          "listName": "settlementType",
          "name": "camp",
          "order": 1,
          "label": {
            "en": "camp",
            "ar": "مخيم نازحين"
          },
          "properties": {}
        },
        {
          "listName": "workDays",
          "name": "1",
          "order": 1,
          "label": {
            "en": "Day 1",
            "ar": "الأول"
          },
          "properties": {}
        },
        {
          "listName": "workDays",
          "name": "4",
          "order": 4,
          "label": {
            "en": "Day 4",
            "ar": "الرابع"
          },
          "properties": {}
        }
      ],
      "optionSets": [],
      "orgUnits": [],
      "label": {
        "en": "Location's ITNs Distribution Form, Households",
        "ar": "استمارة توزيع الناموسيات | منازل | فريق ميداني"
      }
    },
    {
      "id": "KcsA3KETRbY",
      "uid": "KcsA3KETRbY",
      "code": "CHV_PATIENTS_FORM",
      "name": "تسجيل وتدبير حالة ملاريا",
      "description": "استمارة تدبير حالات الملاريا - متطوعات صحة المجتمع",
      "disabled": false,
      "activity": "oBne891mA9n",
      "version": 12,
      "defaultLocal": "ar",
      "fields": [
        {
          "name": "basicInfo",
          "order": 0,
          "description": "Patiant Basic Info",
          "type": "Section",
          "label": {
            "en": "Patient info",
            "ar": "بيانات المريض"
          },
          "fields": [
            {
              "uid": "cD7eF8gH9I0",
              "name": "name",
              "order": 1,
              "description": "Name of the patient",
              "type": "FullName",
              "mandatory": true,
              "mainField": true,
              "label": {
                "en": "Patient name",
                "ar": "اسم المريض"
              }
            },
            {
              "uid": "vW3xY4zA5B6",
              "name": "visitDate",
              "order": 2,
              "type": "Date",
              "mandatory": true,
              "mainField": true,
              "rules": [],
              "label": {
                "en": "Visit Date",
                "ar": "تاريخ الزيارة"
              }
            },
            {
              "uid": "jK1lM2nO3P4",
              "name": "age",
              "order": 3,
              "description": "Age in Years and (months for age less than 1 year)",
              "type": "Number",
              "mandatory": true,
              "mainField": true,
              "constraint": "#{age} <= 0 || #{age} > 100",
              "constraintMessage": {
                "en": "Age is greater than normal",
                "ar": "العمر كبير جدا تأكد"
              },
              "rules": [
                {
                  "field": "age",
                  "expression": "#{age} <= 0 || #{age} > 100",
                  "action": "Error",
                  "message": {
                    "en": "Age is greater than normal",
                    "ar": "العمر كبير جدا تأكد"
                  }
                }
              ],
              "label": {
                "en": "Age",
                "ar": "العمر"
              }
            },
            {
              "uid": "xY9zA0bC1D2",
              "name": "gender",
              "order": 4,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": true,
              "rules": [],
              "listName": "genders",
              "label": {
                "en": "Gender",
                "ar": "الجنس"
              }
            },
            {
              "uid": "eF3gH4iJ5K6",
              "name": "pregnant",
              "order": 5,
              "type": "Boolean",
              "mandatory": true,
              "mainField": true,
              "rules": [
                {
                  "uid": "eF5gH6iJ5K6",
                  "field": "pregnant",
                  "expression": "#{gender} == 'FEMALE' && #{age} >= 14",
                  "action": "Show"
                }
              ],
              "label": {
                "en": "Is pregnant?",
                "ar": "هل هي حامل؟"
              }
            }
          ]
        },
        {
          "name": "testDetails",
          "order": 6,
          "description": "Test Details",
          "type": "Section",
          "label": {
            "en": "Test Details",
            "ar": "معلومات الفحص"
          },
          "fields": [
            {
              "uid": "lM7nO8pQ9R0",
              "name": "testResult",
              "order": 7,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": false,
              "rules": [],
              "listName": "testResults",
              "label": {
                "en": "Test Result",
                "ar": "نتيجة الفحص"
              }
            },
            {
              "uid": "z33bC6dE7F8",
              "name": "detectionType",
              "order": 8,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "uid": "eF3gH8iJ5K9",
                  "field": "detectionType",
                  "expression": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
                  "action": "Show"
                }
              ],
              "listName": "detectionTypes",
              "label": {
                "en": "Detection Type",
                "ar": "نوع الاكتشاف"
              }
            },
            {
              "uid": "zA5bDDdE7F8",
              "name": "severity",
              "order": 9,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": false,
              "rules": [
                {
                  "uid": "eF9gH8iJ5K9",
                  "field": "severity",
                  "expression": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
                  "action": "Show"
                }
              ],
              "listName": "severities",
              "label": {
                "en": "Severity",
                "ar": "تصنيف الحالة"
              }
            },
            {
              "uid": "positivity",
              "name": "positivity",
              "order": 10,
              "type": "Calculated",
              "calculation": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
              "mandatory": false,
              "mainField": false,
              "rules": [],
              "label": {
                "en": "positivity",
                "ar": "إيجابية الحالة"
              }
            },
            {
              "uid": "gH9iJ0kL1M2",
              "name": "treatment",
              "order": 11,
              "type": "SelectOne",
              "mandatory": true,
              "mainField": true,
              "choiceFilter": "severityFilter == #{severity} && pregnantFilter == #{pregnant} && positivityFilter == #{positivity}",
              "rules": [
                {
                  "uid": "gH10J1kL1M2",
                  "field": "treatment",
                  "expression": "#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX'",
                  "action": "Show"
                }
              ],
              "listName": "treatments",
              "label": {
                "en": "Treatment",
                "ar": "تدبير الحالة"
              }
            },
            {
              "uid": "nO3pQ4rS5T6",
              "name": "comment",
              "order": 12,
              "type": "LongText",
              "mainField": false,
              "mandatory": false,
              "rules": [],
              "label": {
                "en": "Comments",
                "ar": "ملاحظات وتعليقات"
              }
            }
          ]
        }
      ],
      "options": [
        {
          "listName": "genders",
          "name": "MALE",
          "order": 0,
          "label": {
            "ar": "ذكر",
            "en": "Male"
          },
          "properties": {}
        },
        {
          "listName": "genders",
          "name": "FEMALE",
          "order": 1,
          "label": {
            "ar": "أنثى",
            "en": "Female"
          },
          "properties": {}
        },
        {
          "listName": "testResults",
          "name": "NEGATIVE",
          "order": 0,
          "label": {
            "ar": "سلبي",
            "en": "Negative"
          },
          "properties": {}
        },
        {
          "listName": "testResults",
          "name": "PF",
          "order": 1,
          "label": {
            "ar": "بلاسموديوم فالسيباروم",
            "en": "Plasmodium falciparum"
          },
          "properties": {}
        },
        {
          "listName": "testResults",
          "name": "PV",
          "order": 2,
          "label": {
            "ar": "بلاسموديوم فيفاكس",
            "en": "Plasmodium vivax"
          },
          "properties": {}
        },
        {
          "listName": "testResults",
          "name": "MIX",
          "order": 3,
          "label": {
            "ar": "مختلط",
            "en": "Mixed"
          },
          "properties": {}
        },
        {
          "listName": "testResults",
          "name": "INVALID",
          "order": 0,
          "label": {
            "ar": "غير صالح",
            "en": "Invalid"
          },
          "properties": {}
        },
        {
          "listName": "detectionTypes",
          "name": "ACTIVE",
          "order": 0,
          "label": {
            "ar": "بحث نشط",
            "en": "Active"
          },
          "properties": {}
        },
        {
          "listName": "detectionTypes",
          "name": "REACTIVE",
          "order": 1,
          "label": {
            "ar": "زيارة روتينية",
            "en": "Reactive"
          },
          "properties": {}
        },
        {
          "listName": "severities",
          "name": "SIMPLE",
          "order": 0,
          "label": {
            "ar": "بسيطة",
            "en": "Simple"
          },
          "properties": {}
        },
        {
          "listName": "severities",
          "name": "SEVERE",
          "order": 1,
          "label": {
            "ar": "وخيمة",
            "en": "Severe"
          },
          "properties": {}
        },
        {
          "listName": "treatments",
          "name": "TREATED",
          "order": 0,
          "label": {
            "ar": "معالج",
            "en": "Treated"
          },
          "filterExpression": "(#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX') && #{severity} == 'SIMPLE'",
          "properties": {
            "severityFilter": "SIMPLE",
            "positivityFilter": true,
            "pregnantFilter": false
          }
        },
        {
          "listName": "treatments",
          "name": "FIRST_DOSE",
          "order": 1,
          "label": {
            "ar": "الجرعة الأولى",
            "en": "First Dose"
          },
          "filterExpression": "(#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX') && #{severity} == 'SEVERE' && #{pregnant} == false",
          "properties": {
            "positivityFilter": true,
            "severityFilter": "SEVERE",
            "pregnantFilter": false
          }
        },
        {
          "listName": "treatments",
          "name": "REFERRAL",
          "order": 2,
          "label": {
            "ar": "إحالة",
            "en": "Referral"
          },
          "filterExpression": "(#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX') && (#{pregnant} == true || #{severity} == 'SEVERE')",
          "properties": {
            "severityFilter": "SEVERE",
            "positivityFilter": true,
            "pregnantFilter": true
          }
        },
        {
          "listName": "treatments",
          "name": "FIRST_DOSE_REFERRAL",
          "order": 3,
          "label": {
            "ar": "الجرعة الأولى وإحالة",
            "en": "First Dose & Referral"
          },
          "filterExpression": "(#{testResult} == 'PF' || #{testResult} == 'PV' || #{testResult} == 'MIX') && #{severity} == 'SEVERE'",
          "properties": {
            "severityFilter": "SEVERE",
            "positivityFilter": true,
            "pregnantFilter": true
          }
        }
      ],
      "label": {
        "en": "chv cases register",
        "ar": "تدبير حالة ملاريا"
      }
    }
  ]
};
