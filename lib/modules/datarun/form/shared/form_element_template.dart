// import 'dart:convert';
//
// import 'package:d2_remote/modules/datarun/form/shared/attribute_type.dart';
// import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
// import 'package:d2_remote/modules/datarun/form/shared/reference_field_info.dart';
// import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';
// import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
// import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
// import 'package:equatable/equatable.dart';
// import 'package:fast_immutable_collections/fast_immutable_collections.dart';
//
// mixin TreePath {
//   String get path;
//   String get name;
// }
//
// class FormElementTemplate with TreePath, EquatableMixin {
//   final ValueType type;
//   final String name;
//   final String path;
//   final int order;
//   final String? fieldValueRenderingType;
//   final IMap<String, String> label;
//   final IList<Rule> rules;
//
//   FormElementTemplate({
//     required this.type,
//     required this.name,
//     required this.path,
//     this.order = 0,
//     this.fieldValueRenderingType,
//     List<Rule> rules = const [],
//     Map<String, String> label = const {},
//   })  : this.rules = IList(rules),
//         this.label = IMap(label);
//
//   @override
//   List<Object?> get props =>
//       [type, name, path, order, rules, label, fieldValueRenderingType];
// }
//
// class FieldTemplate extends FormElementTemplate {
//   final String? listName;
//   final bool mainField;
//   final bool mandatory;
//   final ReferenceInfo? referenceInfo;
//   final String? choiceFilter;
//   final dynamic defaultValue;
//   final AttributeType? attributeType;
//   final String? calculation;
//   final IList<FormOption> options;
//
//   FieldTemplate({
//     required super.type,
//     required super.name,
//     required super.path,
//     super.order,
//     super.fieldValueRenderingType,
//     super.rules,
//     super.label,
//     required this.mandatory,
//     required this.mainField,
//     this.calculation,
//     this.listName,
//     this.referenceInfo,
//     this.choiceFilter,
//     this.defaultValue,
//     this.attributeType,
//     List<FormOption> options = const [],
//   }) : this.options = IListConst(options);
//
//   @override
//   List<Object?> get props => super.props
//     ..addAll([
//       listName,
//       choiceFilter,
//       calculation,
//       defaultValue,
//     ]);
//
//   factory FieldTemplate.fromJson(Map<String, dynamic> json) {
//     final rules = json['rules'] != null
//         ? (parseDynamicJson(json['rules']) as List)
//             .map<Rule>((ruleField) =>
//                 Rule.fromJson({...ruleField, 'field': json['name']}))
//             .toList()
//         : <Rule>[];
//
//     return FieldTemplate(
//         type: ValueType.getValueType(json['type']),
//         name: json['name'],
//         path: json['path'],
//         attributeType: AttributeType.getAttributeType(json['attributeType']),
//         order: json['order'] ?? 0,
//         mandatory: json['mandatory'] ?? false,
//         mainField: json['mainField'] ?? false,
//         listName: json['listName'],
//         choiceFilter: json['choiceFilter'],
//         rules: rules,
//         label: Map<String, String>.from(json['label'] is String
//             ? jsonDecode(json['label'])
//             : json['label']),
//         referenceInfo: json['referenceInfo'] != null
//             ? ReferenceInfo.fromJson(json['referenceInfo'] is String
//                 ? jsonDecode(json['referenceInfo'])
//                 : json['referenceInfo'])
//             : null,
//         fieldValueRenderingType: json['fieldValueRenderingType'],
//         defaultValue: json['defaultValue'] != null
//             ? json['defaultValue'] is String
//                 ? json['defaultValue']
//                 : json['defaultValue'] as String
//             : null,
//         calculation: json['calculation']);
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'type': type.name,
//       'name': name,
//       'path': path,
//       'order': order,
//       'mandatory': mandatory,
//       'mainField': mainField,
//       'listName': listName,
//       'choiceFilter': choiceFilter,
//       'defaultValue': defaultValue,
//       'calculation': calculation,
//       'referenceField':
//           referenceInfo != null ? jsonEncode(referenceInfo!.toJson()) : null,
//       'fieldValueRenderingType': fieldValueRenderingType,
//       // 'fields': jsonEncode(fields.map((field) => field.toJson()).toList()),
//       'rules': jsonEncode(rules.unlock.map((rule) => rule.toJson()).toList()),
//       'label': jsonEncode(label.unlock),
//     };
//   }
// }
//
// /// represent a Section or RepeatableSection, the ValueType tell which on it is
// class SectionTemplate extends FormElementTemplate {
//   final String? itemTitle;
//
//   SectionTemplate(
//       {required super.type,
//       required super.name,
//       required super.path,
//       super.order,
//       super.fieldValueRenderingType,
//       super.rules,
//       super.label,
//       this.itemTitle});
//
//   factory SectionTemplate.fromJson(Map<String, dynamic> json) {
//     final rules = json['rules'] != null
//         ? (parseDynamicJson(json['rules']) as List)
//             .map<Rule>((ruleField) =>
//                 Rule.fromJson({...ruleField, 'field': json['name']}))
//             .toList()
//         : <Rule>[];
//
//     // final fields = json['fields'] != null
//     //     ? (parseDynamicJson(json['fields']) as List)
//     //         .map<FormElementTemplate>((field) => fromJsonFactory({
//     //               ...field,
//     //               "parent": json['name'],
//     //             }))
//     //         .toList()
//     //     : <FormElementTemplate>[];
//
//     return SectionTemplate(
//       type: ValueType.getValueType(json['type']),
//       name: json['name'],
//       path: json['path'],
//       order: json['order'] ?? 0,
//       // fields: fields,
//       rules: rules,
//       label: Map<String, String>.from(
//           json['label'] is String ? jsonDecode(json['label']) : json['label']),
//       fieldValueRenderingType: json['fieldValueRenderingType'],
//       itemTitle: json['itemTitle'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'type': type.name,
//       'name': name,
//       'path': path,
//       'order': order,
//       'fieldValueRenderingType': fieldValueRenderingType,
//       // 'fields':
//       //     jsonEncode(fields.map((field) => toJsonFactory(field)).toList()),
//       'rules': jsonEncode(rules.unlock.map((rule) => rule.toJson()).toList()),
//       'label': jsonEncode(label.unlock),
//       'itemTitle': itemTitle,
//     };
//   }
// }
//
// FormElementTemplate fromJsonFactory(Map<String, dynamic> json) {
//   final type = json['type'] as String?;
//   final valueType = ValueType.getValueType(type);
//
//   switch (valueType) {
//     case ValueType.Section:
//     case ValueType.RepeatableSection:
//       return SectionTemplate.fromJson(json);
//     default:
//       return FieldTemplate.fromJson(json);
//   }
// }
//
// Map<String, dynamic> toJsonFactory(FormElementTemplate field) {
//   switch (field.type) {
//     case ValueType.Section:
//     case ValueType.RepeatableSection:
//       return (field as SectionTemplate).toJson();
//     default:
//       return (field as FieldTemplate).toJson();
//   }
// }
//
// // extension FindTemplateByPath on FormTemplateV {
// //   FormElementTemplate? findByPath(String path) {
// //     List<String> parts = path.split('.');
// //
// //     // Start recursive search from the top level
// //     return _findByPathRecursive(fields, parts);
// //   }
// //
// //   FormElementTemplate? _findByPathRecursive(
// //       List<FormElementTemplate> fields, List<String> parts) {
// //     if (parts.isEmpty) return null; // No more parts, nothing to find
// //
// //     String currentPart = parts.first; // Get the current part of the path
// //
// //     for (FormElementTemplate field in fields) {
// //       if (field.name == currentPart) {
// //         if (parts.length == 1) {
// //           // Base case: if this is the last part, return the field
// //           return field;
// //         } else if (field is SectionTemplate) {
// //           // If the field is a section (has nested fields), continue searching recursively
// //           return _findByPathRecursive(field.fields, parts.sublist(1));
// //         } else {
// //           // If it's not a section and there are still parts left, the path is invalid
// //           return null;
// //         }
// //       }
// //     }
// //     // Field not found at this level
// //     return null;
// //   }
// // }
//
// // mixin ElementAttributesMixin {
// //   // ValueType get type;
// //
// //   AttributeType? get attributeType => null;
// //
// //   bool get mandatory;
// // }
