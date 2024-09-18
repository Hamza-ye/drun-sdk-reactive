// import 'dart:convert';
//
// import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/field_instance.entity.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/form_element_instance.entity.dart';
// import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
//
// class SectionInstance extends FormElementInstance<Map<String, FieldInstance>> {
//   SectionInstance(
//       {dynamic formInstance,
//       required String name,
//       required ValueType type,
//       String? section,
//       String? path,
//       Map<String, FieldInstance>? value})
//       : super(
//             formInstance: formInstance,
//             name: name,
//             section: section,
//             path: path,
//             type: type,
//             value: value);
//
//   factory SectionInstance.fromJson(Map<String, dynamic> json) {
//
//     final value = json['value'] != null
//         ? (parseDynamicJson(json['value']) as Map<String, dynamic>).map(
//             (key, field) => MapEntry(key,
//                 FieldInstance.fromJson({...field, 'section': json['name']})))
//         : null;
//     // final value = json['value'] != null
//     //     ? (parseDynamicJson(json['value']) as List<dynamic>)
//     //         .map((field) =>
//     //             FieldInstance.fromJson({...field, 'section': json['name']}))
//     //         .toList()
//     //     : null;
//
//     final String sectionPath =
//         json['section'] != null ? '${json['section']}.' : '';
//     final String path = '$sectionPath${json['name']}';
//
//     return SectionInstance(
//         formInstance: json['formInstance'],
//         name: json['name'],
//         section: json['section'],
//         path: path,
//         type: ValueType.getValueType(json['type']),
//         value: value);
//   }
//
//   Map<String, dynamic> toJson() => {
//         'formInstance': formInstance,
//         'name': name,
//         'section': section,
//         'path': path,
//         'type': type.name,
//         'value': value?.map((key, field) => MapEntry(key, field.toJson())),
//       };
// }
