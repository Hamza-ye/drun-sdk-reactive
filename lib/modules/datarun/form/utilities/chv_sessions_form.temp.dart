final Map<String, dynamic> dTempChvSessionForm = {
  "paging": true,
  "page": 0,
  "pageCount": 1,
  "total": 2,
  "pageSize": 20,
  "dynamicForms": [
    {
      "id": "1",
      "uid": "r1j333zL3VB",
      "name": "ChvRegister Form",
      "code": "CHV_SESSIONS_FORM",
      "createdDate": "2024-06-13T00:00:00.000Z",
      "lastModifiedDate": "2024-06-13T00:00:00.000Z",
      "activity": {
        "id": 18,
        "uid": "oCne291mA9n",
      },
      "fields": [
        {
          "type": "Date",
          "label": "Session Date",
          "name": "sessionDate",
          "fieldRule": {"required": true}
        },
        {
          "id": "3",
          "type": "SelectOne",
          "label": "Session Subject",
          "name": "subject",
          "options": ["ITNs", "BreadingSite", "TRANSMISSION_PREVENTION"],
          "rules": {"required": true}
        },
        {
          "type": "Number",
          "name": "sessions",
          "label": "Sessions",
          "fieldRule": {
            "required": false,
            "numeric": true,
          }
        },
        {
          "type": "Number",
          "name": "people",
          "label": "People",
          "fieldRule": {
            "required": false,
            "numeric": true,
          }
        }
      ],
    }
  ]
};
