import 'dart:convert';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/shared/translations.dart';
import 'package:drift/drift.dart';

/// Converts a List<DOptionSet> to/from a JSON String.
class TranslationConverter extends TypeConverter<List<Translation>, String> {
  const TranslationConverter();

  @override
  List<Translation> fromSql(String fromDb) {
    final List<dynamic> decoded = jsonDecode(fromDb);
    return decoded.map((json) => Translation.fromJson(json)).toList();
  }

  @override
  String toSql(List<Translation> value) {
    final listJson = value.map((translation) => translation.toJson()).toList();
    return jsonEncode(listJson);
  }
}
