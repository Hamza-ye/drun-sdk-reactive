import 'dart:convert';

dynamic parseDynamicField(dynamic jsonField) {
  return jsonField.runtimeType == String ? jsonDecode(jsonField) : jsonField;
}

dynamic parseDynamicList(dynamic jsonList) {
  return jsonList.runtimeType == String ? jsonDecode(jsonList) : jsonList;
}
