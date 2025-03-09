import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/form/shared/metadata_resource_type.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'metadataSubmission', apiResourceName: 'metadataSubmissions')
class MetadataSubmission extends IdentifiableEntity {
  @Column(nullable: false, type: ColumnType.TEXT)
  final MetadataResourceType resourceType;

  @Column(nullable: false, type: ColumnType.TEXT)
  final String metadataSchema;

  @Column(nullable: false, type: ColumnType.INTEGER)
  final int serialNumber;

  @Column(nullable: false, type: ColumnType.INTEGER)
  final int version;

  @Column(nullable: false, type: ColumnType.TEXT)
  final String resourceId;

  @Column(nullable: true, type: ColumnType.TEXT)
  final Map<String, dynamic> formData = {};

  @Column(nullable: true, type: ColumnType.TEXT)
  final String? createdBy;

  @Column(nullable: true, type: ColumnType.TEXT)
  final String? lastModifiedBy;

  MetadataSubmission({
    required this.resourceType,
    required this.metadataSchema,
    required this.resourceId,
    required this.serialNumber,
    required this.version,
    this.lastModifiedBy,
    this.createdBy,
    String? id,
    String? uid,
    String? name,
    String? code,
    Map<String, dynamic> formData = const {},
    String? createdDate,
    String? lastModifiedDate,
    required dirty,
  }) : super(
          id: id,
          uid: uid,
          name: name,
          code: code,
          createdDate: createdDate,
          lastModifiedDate: lastModifiedDate,
          dirty: dirty,
        ) {
    this.formData.addAll(formData);
  }

  // From JSON string (Database and API)
  factory MetadataSubmission.fromJson(Map<String, dynamic> json) {
    final resourceType = MetadataResourceType.getType(json['resourceType']);

    Map<String, dynamic> parseFormData(dynamic data) {
      if (data == null || (data is String && data.isEmpty)) {
        return {};
      }
      return Map<String, dynamic>.from(
          data is String ? jsonDecode(data) : data);
    }

    final formData = parseFormData(json['formData']);
    // final metadataSubmissionUpdates = List<dynamic>.from(
    //         (formData['households'] is String
    //                 ? jsonDecode(formData['households'])
    //                 : formData['households']) ??
    //             [])
    //     .map((metadataSubmission) => MetadataSubmissionUpdate.fromJson({
    //           ...metadataSubmission,
    //           'resourceId': json['resourceId'],
    //           'resourceType': json['resourceType'],
    //           'metadataSubmission': json['id'],
    //         }))
    //     .toList();

    // metadataSubmission: json['metadataSubmission'],
    // resourceId: json['resourceId'],
    // resourceType: resourceType,
    return MetadataSubmission(
      resourceType: resourceType,
      metadataSchema: json['metadataSchema'],
      resourceId: json['resourceId'],
      serialNumber: json['serialNumber'],
      version: json['version'],
      id: json['id'],
      // metadataSubmissionUpdates: metadataSubmissionUpdates,
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      lastModifiedBy: json['lastModifiedBy'],
      createdBy: json['createdBy'],
      formData: formData,
      dirty: json['dirty'] ?? false,
    );
  }

  factory MetadataSubmission.fromApi(Map<String, dynamic> json) {
    final resourceType = MetadataResourceType.getType(json['resourceType']);

    Map<String, dynamic> parseFormData(dynamic data) {
      if (data == null || (data is String && data.isEmpty)) {
        return {};
      }
      return Map<String, dynamic>.from(
          data is String ? jsonDecode(data) : data);
    }

    final formData = parseFormData(json['formData']);
    // final metadataSubmissionUpdates = List<dynamic>.from(
    //         (formData['households'] is String
    //                 ? jsonDecode(formData['households'])
    //                 : formData['households']) ??
    //             [])
    //     .map((metadataSubmission) => MetadataSubmissionUpdate.fromApi({
    //           ...metadataSubmission,
    //           'resourceId': json['resourceId'],
    //           'resourceType': json['resourceType'],
    //           'id': metadataSubmission['_id']!,
    //           'parentId': metadataSubmission['_parentId']!,
    //           'metadataSubmission': json['id']!,
    //         }))
    //     .toList();

    return MetadataSubmission(
      resourceType: resourceType,
      metadataSchema: json['metadataSchema'],
      resourceId: json['resourceId'],
      id: json['id'],
      uid: json['uid'],
      code: json['code'],
      serialNumber: json['serialNumber'],
      version: json['version'],
      name: json['name'],
      lastModifiedBy: json['lastModifiedBy'],
      createdBy: json['createdBy'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      // metadataSubmissionUpdates: metadataSubmissionUpdates,
      formData: formData,
      dirty: json['dirty'] ?? false,
    );
  }

  /// To JSON string for Database and API
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'code': code,
      'name': name,
      'version': version,
      'serialNumber': serialNumber,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'formData': jsonEncode(formData),
      'resourceType': resourceType.name,
      'metadataSchema': metadataSchema,
      'resourceId': resourceId,
      'dirty': this.dirty,
    };
  }

  Map<String, dynamic> toContext() {
    return {
      'metadataSubmission': uid,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'metadataSchema': metadataSchema,
      'resourceType': resourceType.name,
      'resourceId': resourceId,
      'households': formData['households'],
      'dirty': this.dirty,
    };
  }
}
