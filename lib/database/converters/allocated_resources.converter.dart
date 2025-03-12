import 'dart:convert';

import 'package:drift/drift.dart';

/// Converter for allocatedResources: Map<String, Object?> <-> JSON String
class AllocatedResourcesConverter
    extends TypeConverter<Map<String, Object?>, String?> {
  const AllocatedResourcesConverter();

  @override
  Map<String, Object?> fromSql(String? fromDb) {
    if (fromDb == null) return {};
    return Map<String, Object?>.from(jsonDecode(fromDb));
  }

  @override
  String? toSql(Map<String, Object?>? resources) {
    if (resources == null) return null;
    return jsonEncode(resources);
  }
}
