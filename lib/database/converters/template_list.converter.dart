import 'dart:convert';

import 'package:d_sdk/database/shared/value_type.dart';
import 'package:drift/drift.dart';

import '../../core/form/field_template/field_template.dart';

/// Converts a List<Template> tree to/from a JSON String.
class TemplateListConverter extends TypeConverter<List<Template>, String> {
  const TemplateListConverter();

  @override
  List<Template> fromSql(String fromDb) {
    final List<dynamic> decoded = jsonDecode(fromDb);
    return decoded.map((json) => fromJsonFactory(json)).toList();
  }

  @override
  String toSql(List<Template> value) {
    final listJson = value.map((t) => toJsonFactory(t)).toList();
    return jsonEncode(listJson);
  }

  static Template fromJsonFactory(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final valueType = ValueType.getValueType(type);

    switch (valueType) {
      case ValueType.Section:
      case ValueType.RepeatableSection:
        return SectionTemplate.fromJson(json);
      default:
        return FieldTemplate.fromJson(json);
    }
  }

  static Map<String, dynamic> toJsonFactory(Template template) {
    switch (template.type) {
      case ValueType.Section:
      case ValueType.RepeatableSection:
        return (template as SectionTemplate).toJson();
      default:
        return (template as FieldTemplate).toJson();
    }
  }
}
