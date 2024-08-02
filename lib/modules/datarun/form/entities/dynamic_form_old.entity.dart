// import 'dart:convert';
//
// import 'package:d2_remote/core/annotations/column.annotation.dart';
// import 'package:d2_remote/core/annotations/entity.annotation.dart';
// import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
// import 'package:d2_remote/core/annotations/relation.annotation.dart';
// import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
// import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
// import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
// import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
// import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'dynamicForm', apiResourceName: 'dataForms')
// class DynamicForm extends IdentifiableEntity {
//   @Column(nullable: true, type: ColumnType.TEXT)
//   final List<DynamicFormField>? mainFields;
//
//   @Column(nullable: true, type: ColumnType.TEXT)
//   final List<DynamicFormField>? fields;
//
//   @Column(nullable: true, type: ColumnType.TEXT)
//   final List<FormOption>? options;
//
//   @ManyToOne(table: DActivity, joinColumnName: 'activity')
//   dynamic activity;
//
//   @Column(nullable: false, type: ColumnType.TEXT)
//   final Map<String, String> label;
//
//   @Column(nullable: false, type: ColumnType.TEXT)
//   final String defaultLocal;
//
//   @Column(nullable: false)
//   final String version;
//
//   @Column(nullable: true, type: ColumnType.TEXT)
//   final List<Rule>? rules;
//
//   DynamicForm({
//     String? id,
//     String? uid,
//     String? name,
//     String? code,
//     this.mainFields,
//     String? createdDate,
//     String? lastModifiedDate,
//     this.fields,
//     this.options,
//     this.activity,
//     required this.version,
//     required this.label,
//     required this.defaultLocal,
//     this.rules,
//     required dirty,
//   }) : super(
//           id: id,
//           uid: uid,
//           name: name,
//           code: code,
//           createdDate: createdDate,
//           lastModifiedDate: lastModifiedDate,
//           dirty: dirty,
//         );
//
//   // From JSON string (Database and API)
//   factory DynamicForm.fromJson(Map<String, dynamic> json) {
//     final mainFields = json['mainFields'] != null
//         ? (parseDynamicList(json['mainFields']) as List)
//             .map((mainField) => DynamicFormField.fromJson(mainField))
//             .toList()
//         : null;
//
//     final fields = json['fields'] != null
//         ? (parseDynamicList(json['fields']) as List)
//             .map((field) => DynamicFormField.fromJson(field))
//             .toList()
//         : null;
//
//     final rules = json['rules'] != null
//         ? (parseDynamicList(json['rules']) as List)
//             .map((ruleField) => Rule.fromJson(ruleField))
//             .toList()
//         : null;
//
//     final options = json['options'] != null
//         ? (parseDynamicList(json['options']) as List)
//             .map((ruleField) => FormOption.fromJson(ruleField))
//             .toList()
//         : null;
//
//     return DynamicForm(
//       id: json['id'].toString(),
//       uid: json['uid'],
//       code: json['code'],
//       name: json['name'],
//       version: json['version'].toString(),
//       label: Map<String, String>.from(
//           json['label'] is String ? jsonDecode(json['label']) : json['label']),
//       defaultLocal: json['defaultLocal'],
//       mainFields: mainFields,
//       fields: fields,
//       options: options,
//       activity: json['activity'] is String
//           ? json['activity']
//           : json['activity']['uid'],
//       rules: rules,
//       createdDate: json['createdDate'],
//       lastModifiedDate: json['lastModifiedDate'],
//       dirty: json['dirty'] ?? false,
//     );
//   }
//
//   /// To JSON string for Database and API
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'uid': uid,
//       'code': code,
//       'name': name,
//       'version': version,
//       'label': jsonEncode(label),
//       'defaultLocal': defaultLocal,
//       'mainFields': mainFields != null
//           ? jsonEncode(mainFields!.map((field) => field.toJson()).toList())
//           : null,
//       'fields': fields != null
//           ? jsonEncode(fields!.map((field) => field.toJson()).toList())
//           : null,
//       'rules': rules != null
//           ? jsonEncode(rules!.map((rule) => rule.toJson()).toList())
//           : null,
//       'options': options != null
//           ? jsonEncode(options!.map((choice) => choice.toJson()).toList())
//           : null,
//       'activity': activity,
//       'createdDate': createdDate,
//       'lastModifiedDate': lastModifiedDate,
//       'dirty': dirty,
//     };
//   }
// }
