// import 'dart:convert';
//
// import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
//
// dynamic parseDynamicJson(dynamic jsonList) {
//   return jsonList.runtimeType == String ? jsonDecode(jsonList) : jsonList;
// }
//
// class FormInstance {
//   final String name;
//
//   /// can be a list of [FieldInstance], [SectionInstance], or [RepeatableSectionInstance]
//   final List<FormElementInstance>? fields;
//
//   FormInstance({required this.name, this.fields});
//
//   // From JSON string (Database and API)
//   factory FormInstance.fromJson(Map<String, dynamic> json) {
//     return FormInstance(
//       name: json['name'],
//       fields: (parseDynamicJson(json['fields']) as List)
//           .map((value) => fromJsonFactory(value))
//           .toList(),
//     );
//   }
//
//   /// To JSON string for Database and API
//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'fields': fields != null
//           ? jsonEncode(fields!.map((field) => toJsonFactory(field)).toList())
//           : null,
//     };
//   }
// }
//
// FormElementInstance fromJsonFactory(Map<String, dynamic> json) {
//   final type = json['type'] as String?;
//   final valueType = ValueType.getValueType(type);
//
//   switch (valueType) {
//     case ValueType.Section:
//       return SectionInstance.fromJson(json);
//     case ValueType.RepeatableSection:
//       return RepeatableSectionInstance.fromJson(json);
//     case ValueType.Integer:
//     case ValueType.Text:
//     case ValueType.DateTime:
//     case ValueType.Boolean:
//       return FieldInstance.fromJson(json);
//
//     default:
//       throw Exception('Unknown type');
//   }
// }
//
// Map<String, dynamic> toJsonFactory(FormElementInstance field) {
//   switch (field.type) {
//     case ValueType.Section:
//       return (field as SectionInstance).toJson();
//     case ValueType.RepeatableSection:
//       return (field as RepeatableSectionInstance).toJson();
//     case ValueType.Integer:
//     case ValueType.Text:
//     case ValueType.DateTime:
//     case ValueType.Boolean:
//       return (field as FieldInstance).toJson();
//     default:
//       throw Exception('Unknown type');
//   }
// }
//
// class FormElementInstance<T> {
//   final String name;
//
//   final String? section;
//
//   final ValueType type;
//
//   final T? value;
//
//   FormElementInstance({
//     required this.name,
//     this.section,
//     required this.type,
//     this.value,
//   });
// }
//
// class SectionInstance extends FormElementInstance<List<FieldInstance>> {
//   SectionInstance(
//       {required String name,
//         required ValueType type,
//         String? section,
//         List<FieldInstance>? value})
//       : super(name: name, section: section, type: type, value: value);
//
//   factory SectionInstance.fromJson(Map<String, dynamic> json) {
//     final value = json['value'] != null
//         ? (parseDynamicJson(json['value']) as List<dynamic>)
//         .map((field) =>
//         FieldInstance.fromJson(field as Map<String, dynamic>))
//         .toList()
//         : null;
//
//     return SectionInstance(
//         name: json['name'],
//         section: json['section'],
//         type: ValueType.getValueType(json['type']),
//         value: value);
//   }
//
//   Map<String, dynamic> toJson() => {
//     'name': name,
//     'section': section,
//     'type': type.name,
//     'value': value?.map((field) => field.toJson()).toList(),
//   };
// }
//
// class RepeatableSectionInstance
//     extends FormElementInstance<List<SectionInstance>> {
//   RepeatableSectionInstance(
//       {required String name,
//         required ValueType type,
//         String? section,
//         List<SectionInstance>? value})
//       : super(name: name, section: section, type: type, value: value);
//
//   factory RepeatableSectionInstance.fromJson(Map<String, dynamic> json) {
//     final value = json['value'] != null
//         ? (parseDynamicJson(json['value']) as List<dynamic>)
//         .map((section) =>
//         SectionInstance.fromJson(section as Map<String, dynamic>))
//         .toList()
//         : null;
//
//     return RepeatableSectionInstance(
//         name: json['name'],
//         section: json['section'],
//         type: ValueType.getValueType(json['type']),
//         value: value);
//   }
//
//   Map<String, dynamic> toJson() => {
//     'name': name,
//     'section': section,
//     'type': type.name,
//     'value': value?.map((section) => section.toJson()).toList(),
//   };
// }
//
// class FieldInstance extends FormElementInstance<Object> {
//   // Field instance values are basic values such as int, String, double ...etc
//   FieldInstance(
//       {required String name,
//         required ValueType type,
//         String? section,
//         Object? value})
//       : super(name: name, section: section, type: type, value: value);
//
//   factory FieldInstance.fromJson(Map<String, dynamic> json) {
//     return FieldInstance(
//         name: json['name'],
//         section: json['section'],
//         type: ValueType.getValueType(json['type']),
//         value: json['value']);
//   }
//
//   Map<String, dynamic> toJson() => {
//     'name': name,
//     'section': section,
//     'type': type.name,
//     'value': value,
//   };
// }
