import 'dart:convert';

import 'package:d_sdk/database/shared/shared.dart';
import 'package:drift/drift.dart';

/// Converter for ScannedCodeProperties <-> String (assumes a toJson/fromJson API)
class ScannedCodePropertiesConverter
    extends TypeConverter<ScannedCodeProperties?, String?>
    with
        JsonTypeConverter2<ScannedCodeProperties?, String?,
            Map<String, Object?>?> {
  const ScannedCodePropertiesConverter();

  @override
  ScannedCodeProperties? fromSql(String? fromDb) {
    if (fromDb == null) return null;
    return fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? toSql(ScannedCodeProperties? value) {
    if (value == null) return null;
    return json.encode(toJson(value));
  }

  @override
  ScannedCodeProperties? fromJson(Map<String, Object?>? json) {
    if (json == null) return null;
    return ScannedCodeProperties.fromJson(json);
  }

  @override
  Map<String, Object?>? toJson(ScannedCodeProperties? value) {
    return value?.toJson();
  }
}
