import 'dart:convert';

import 'package:d_sdk/database/shared/shared.dart';
import 'package:drift/drift.dart';

/// Converts a List<FormOption> to/from a JSON String.
/// (Assumes you already have a converter for FormOption lists.)
class FormOptionListConverter extends TypeConverter<List<FormOption>, String> {
  const FormOptionListConverter();

  @override
  List<FormOption> fromSql(String fromDb) {
    final List<dynamic> decoded = jsonDecode(fromDb);
    return decoded.map((json) => FormOption.fromJson(json)).toList();
  }

  @override
  String toSql(List<FormOption> value) {
    final listJson = value.map((option) => option.toJson()).toList();
    return jsonEncode(listJson);
  }
}
