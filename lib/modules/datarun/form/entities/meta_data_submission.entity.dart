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

  @Column(nullable: false, type: ColumnType.TEXT)
  final String resourceId;

  @Column(nullable: true, type: ColumnType.TEXT)
  final Map<String, dynamic> formData = {};

  MetadataSubmission({
    required this.resourceType,
    required this.metadataSchema,
    required this.resourceId,
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

    return MetadataSubmission(
      resourceType: resourceType,
      metadataSchema: json['metadataSchema'],
      resourceId: json['resourceId'],
      id: json['id'].toString(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      formData: parseFormData(json['formData']),
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

    return MetadataSubmission(
      resourceType: resourceType,
      metadataSchema: json['metadataSchema'],
      resourceId: json['resourceId'],
      id: json['id'].toString(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      formData: parseFormData(json['formData']),
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
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'formData': jsonEncode(formData),
      'resourceType': resourceType.name,
      'metadataSchema': metadataSchema,
      'resourceId': resourceId,
      'dirty': this.dirty,
    };
  }
}
