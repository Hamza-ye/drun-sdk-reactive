import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:d_sdk/database/shared/shared.dart';

/// Converter for List<AllowedAction> <-> String
class AllowedActionListConverter
    extends TypeConverter<List<AllowedAction>, String?> {
  const AllowedActionListConverter();

  @override
  List<AllowedAction> fromSql(String? fromDb) {
    if (fromDb == null) return [];
    final List<dynamic> decoded = jsonDecode(fromDb);
    return decoded.map((action) => AllowedAction.getValueType(action)).toList();
  }

  @override
  String? toSql(List<AllowedAction>? value) {
    if (value == null) return null;
    final jsonList = value.map((t) => t.name).toList();
    return jsonEncode(jsonList);
  }
}
