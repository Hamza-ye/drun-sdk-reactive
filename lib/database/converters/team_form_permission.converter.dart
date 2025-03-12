import 'dart:convert';

import 'package:d_sdk/database/shared/shared.dart';
import 'package:drift/drift.dart';

/// Converter for List<TeamFormPermission> <-> JSON String.
/// Assumes that TeamFormPermission has fromJson and toJson.
class TeamFormPermissionListConverter
    extends TypeConverter<List<TeamFormPermission>, String?> {
  const TeamFormPermissionListConverter();

  @override
  List<TeamFormPermission> fromSql(String? fromDb) {
    if (fromDb == null) return [];
    final List<dynamic> decoded = jsonDecode(fromDb);
    return decoded
        .map(
            (item) => TeamFormPermission.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  String? toSql(List<TeamFormPermission>? value) {
    if (value == null) return null;
    final listJson = value.map((item) => item.toJson()).toList();
    return jsonEncode(listJson);
  }
}
