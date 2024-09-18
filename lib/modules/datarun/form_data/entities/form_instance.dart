// import 'dart:convert';
//
// import 'package:d2_remote/core/annotations/column.annotation.dart';
// import 'package:d2_remote/core/annotations/entity.annotation.dart';
// import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
// import 'package:d2_remote/modules/data/tracker/models/event_import_summary.dart';
// import 'package:d2_remote/modules/data/tracker/models/geometry.dart';
// import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/field_instance.entity.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/form_element_instance.entity.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/repeatable_section_instance.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/section_instance.entity.dart';
// import 'package:d2_remote/modules/datarun_shared/entities/syncable.entity.dart';
// import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'formInstance', apiResourceName: 'formInstances')
// class FormInstance extends SyncableEntity {
//   /// can be a list of [FieldInstance], [SectionInstance], or [RepeatableSectionInstance]
//   @Column(nullable: true, type: ColumnType.TEXT)
//   final List<FormElementInstance>? fields;
//
//   FormInstance({
//     String? id,
//     String? uid,
//     String? name,
//     String? code,
//     this.fields,
//     String? createdDate,
//     String? lastModifiedDate,
//
//     /// Syncable
//     required int version,
//     required dynamic form,
//     bool? deleted,
//     bool? synced,
//     bool? syncFailed,
//     String? lastSyncDate,
//     String? lastSyncMessage,
//     EventImportSummary? lastSyncSummary,
//     String? startEntryTime,
//     String? finishedEntryTime,
//     dynamic activity,
//     dynamic team,
//     required String? orgUnit,
//     required String status,
//     Geometry? geometry,
//     required dirty,
//   }) : super(
//           id: id,
//           uid: uid,
//           name: name,
//           code: code,
//           createdDate: createdDate,
//           lastModifiedDate: lastModifiedDate,
//
//           /// Syncable
//           form: form,
//           version: version,
//           deleted: deleted,
//           synced: synced,
//           syncFailed: syncFailed,
//           lastSyncDate: lastSyncDate,
//           lastSyncMessage: lastSyncMessage,
//           lastSyncSummary: lastSyncSummary,
//           startEntryTime: startEntryTime,
//           finishedEntryTime: finishedEntryTime,
//           activity: activity,
//           team: team,
//           orgUnit: orgUnit,
//           status: status,
//           geometry: geometry,
//           dirty: dirty,
//         );
//
//   // From JSON string (Database and API)
//   factory FormInstance.fromJson(Map<String, dynamic> json) {
//     final activity = json['activity'] != null
//         ? json['activity'] is String
//             ? json['activity']
//             : json['activity']['uid']
//         : null;
//
//     return FormInstance(
//       id: json['id'].toString(),
//       uid: json['uid'],
//       code: json['code'],
//       name: json['name'],
//       createdDate: json['createdDate'],
//       lastModifiedDate: json['lastModifiedDate'],
//       fields: (parseDynamicJson(json['fields']) as List)
//           .map((value) =>
//               fromJsonFactory({...value, 'formInstance': json['uid']}))
//           .toList(),
//
//       /// SynFormElementInstance json['form'],
//       form: json['form'],
//       version: json['version'],
//       deleted: json['deleted'],
//       synced: json['synced'],
//       syncFailed: json['syncFailed'],
//       lastSyncDate: json['lastSyncDate'],
//       lastSyncMessage: json['lastSyncMessage'],
//       startEntryTime: json['startEntryTime'],
//       finishedEntryTime: json['finishedEntryTime'],
//       activity: activity,
//       team: json['team'] != null
//           ? json['team'] is String
//               ? json['team']
//               : json['team']['uid']
//           : null,
//       status: json['status'],
//       orgUnit:
//           json['orgUnit'] is String ? json['orgUnit'] : json['orgUnit']?['uid'],
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
//       'createdDate': createdDate,
//       'lastModifiedDate': lastModifiedDate,
//       'fields': fields != null
//           ? jsonEncode(fields!.map((field) => toJsonFactory(field)).toList())
//           : null,
//
//       /// Syncable
//       'form': form,
//       'version': version,
//       'deleted': this.deleted,
//       'synced': this.synced,
//       'syncFailed': this.syncFailed,
//       'lastSyncSummary': this.lastSyncSummary != null
//           ? jsonEncode(
//               (this.lastSyncSummary as EventImportSummary).responseSummary)
//           : null,
//       'lastSyncDate': this.lastSyncDate,
//       'lastSyncMessage': this.lastSyncMessage,
//       'startEntryTime': this.startEntryTime,
//       'finishedEntryTime': this.finishedEntryTime,
//       'activity': activity,
//       'team': team,
//       'orgUnit': orgUnit,
//       'status': this.status,
//       'geometry': this.geometry != null
//           ? jsonEncode(this.geometry?.geometryData)
//           : null,
//       'dirty': this.dirty,
//     };
//   }
//
//   @override
//   Map<String, dynamic> toUpload() {
//     Map<String, dynamic> syncableToUpload = super.toUpload();
//
//     syncableToUpload.addAll({
//       'formData': fields,
//     });
//
//     return syncableToUpload;
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
// Map<String, dynamic> extractRawValues(FormInstance formInstance) {
//   Map<String, dynamic> rawValues = {};
//
//   for (var field in formInstance.fields ?? []) {
//     rawValues.addAll(extractElementValue(field));
//   }
//
//   return rawValues;
// }
//
// Map<String, dynamic> extractElementValue(FormElementInstance element) {
//   Map<String, dynamic> result = {};
//
//   if (element is FieldInstance) {
//     // Direct value mapping
//     result[element.name!] = element.value;
//   } else if (element is SectionInstance) {
//     // Flatten section fields without including the section name
//     for (var field in element.value?.values.toList() ?? []) {
//       result.addAll(extractElementValue(field));
//     }
//   } else if (element is RepeatableSectionInstance) {
//     // Repeatable section with multiple sections
//     List<Map<String, dynamic>> repeatedValues = [];
//     for (var section in element.value ?? []) {
//       repeatedValues.add(extractElementValue(section));
//     }
//     result[element.name!] = repeatedValues;
//   }
//
//   return result;
// }
//
// // Map<String, dynamic> extractElementValue(FormElementInstance element) {
// //   Map<String, dynamic> result = {};
// //
// //   if (element is FieldInstance) {
// //     // Direct value mapping
// //     result[element.name!] = element.value;
// //   } else if (element is SectionInstance) {
// //     // Section has nested fields
// //     Map<String, dynamic> sectionValues = {};
// //     for (var field in element.value?.values.toList() ?? []) {
// //       sectionValues.addAll(extractElementValue(field));
// //     }
// //     result[element.name!] = sectionValues;
// //   } else if (element is RepeatableSectionInstance) {
// //     // Repeatable section has multiple sections (List<SectionInstance>)
// //     List<Map<String, dynamic>> repeatedValues = [];
// //     for (var section in element.value ?? []) {
// //       repeatedValues.add(extractElementValue(section));
// //     }
// //     result[element.name!] = repeatedValues;
// //   }
// //
// //   return result;
// // }
