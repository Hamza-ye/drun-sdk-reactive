import 'dart:convert';

import 'package:drift/drift.dart';

/// Converter for forms: List<String> <-> JSON String
class ListConverter<T> extends TypeConverter<List<T>, String?> {
  const ListConverter();

  @override
  List<T> fromSql(String? fromDb) {
    if (fromDb == null) return [];
    final List<dynamic> decoded = jsonDecode(fromDb);
    return decoded.cast<T>();
  }

  @override
  String? toSql(List<T>? forms) {
    if (forms == null) return null;
    final data = jsonEncode(forms);
    return jsonEncode(forms);
  }
}
