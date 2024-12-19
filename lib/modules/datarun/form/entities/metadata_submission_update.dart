import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/form/shared/metadata_resource_type.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'metadataSubmissionUpdate',
    apiResourceName: 'metadataSubmissionUpdates')
class MetadataSubmissionUpdate extends IdentifiableEntity {
  @Column(nullable: true, type: ColumnType.TEXT)
  String submissionId;

  // @ManyToOne(table: MetadataSubmission, joinColumnName: 'metadataSubmission')
  @Column(nullable: true, type: ColumnType.TEXT)
  String? metadataSubmission;

  // @Column(nullable: true, type: ColumnType.TEXT)
  // String? parentId;

  @Column(nullable: true, type: ColumnType.TEXT)
  String? resourceId;

  @Column(nullable: true, type: ColumnType.TEXT)
  MetadataResourceType? resourceType;

  @Column(nullable: true, type: ColumnType.BOOLEAN)
  bool? updated;

  @Column(nullable: true, type: ColumnType.BOOLEAN)
  bool? created;

  // @Column(nullable: false, type: ColumnType.TEXT)
  // final String id;

  // @Column(nullable: true, type: ColumnType.INTEGER)
  // int? householdHeadSerialNumber;
  //
  // @Column(nullable: true, type: ColumnType.INTEGER)
  // int? updatedHouseholdHeadSerialNumber;
  //
  // @Column(nullable: true, type: ColumnType.TEXT)
  // String? householdName;

  @Column(nullable: true, type: ColumnType.TEXT)
  final Map<String, dynamic> formData = {};

  int? get householdHeadSerialNumber =>
      formData['householdHeadSerialNumber'] as int?;

  int? get updatedHouseholdHeadSerialNumber =>
      formData['updatedHouseholdHeadSerialNumber'] as int?;

  String? get householdName => formData['householdName'] as String?;

  // final DateTime createdAt;
  // final String avatar;

  MetadataSubmissionUpdate({
    required this.submissionId,
    required this.metadataSubmission,
    required this.resourceId,
    required this.resourceType,
    // required this.parentId,
    required super.id,
    required this.updated,
    required this.created,
    Map<String, dynamic> formData = const {},
    String? createdDate,
    String? lastModifiedDate,
    required super.dirty,
  }) : super(
            uid: id,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate) {
    this.formData.addAll(formData);
  }

  /// To JSON string for Database and API
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'submissionId': submissionId,
      // 'parentId': parentId,
      'resourceType': resourceType?.name,
      'resourceId': resourceId,
      'updated': updated,
      'formData': jsonEncode(formData),
      'created': created,
      'householdName': householdName,
      'householdHeadSerialNumber': householdHeadSerialNumber,
      'updatedHouseholdHeadSerialNumber': updatedHouseholdHeadSerialNumber,
      'metadataSubmission': metadataSubmission,
      'lastModifiedDate': lastModifiedDate,
      'createdDate': createdDate,
      'dirty': this.dirty,
    };
  }

  /// To JSON string for Database and API
  Map<String, dynamic> toUpload() {
    return {
      'id': '${submissionId}_$id',
      // '_parentId': parentId,
      'resourceType': resourceType?.name,
      'resourceId': resourceId,
      'updated': updated,
      'created': created,
      'formData': {
        '_id': id,
        // '_parentId': parentId,
        'householdName': householdName,
        'householdHeadSerialNumber': householdHeadSerialNumber,
        'updatedHouseholdHeadSerialNumber': updatedHouseholdHeadSerialNumber,
        'updated': updated,
        'created': created,
        'resourceType': resourceType?.name,
        'resourceId': resourceId,
        // 'metadataSubmission': metadataSubmission,
        // 'lastModifiedDate': lastModifiedDate,
        // 'createdDate': createdDate,
      },
      'dirty': this.dirty,
    };
  }

  factory MetadataSubmissionUpdate.fromJson(Map<String, dynamic> json) {
    final resourceType = MetadataResourceType.getType(json['resourceType']);

    Map<String, dynamic> parseFormData(dynamic data) {
      if (data == null || (data is String && data.isEmpty)) {
        return {};
      }
      return Map<String, dynamic>.from(
          data is String ? jsonDecode(data) : data);
    }

    final formData = parseFormData(json['formData']);

    return MetadataSubmissionUpdate(
      metadataSubmission: json['metadataSubmission'],
      resourceId: json['resourceId'],
      submissionId: json['submissionId'],
      resourceType: resourceType,
      // parentId: json['parentId'],
      updated: json['updated'] ?? false,
      created: json['created'] ?? false,
      id: json['id'],
      formData: formData,
      dirty: json['dirty'] ?? false,
    );
  }

  factory MetadataSubmissionUpdate.fromApi(Map<String, dynamic> json) {
    final resourceType = MetadataResourceType.getType(json['resourceType']);

    Map<String, dynamic> parseFormData(dynamic data) {
      if (data == null || (data is String && data.isEmpty)) {
        return {};
      }
      return Map<String, dynamic>.from(
          data is String ? jsonDecode(data) : data);
    }

    final formData = parseFormData(json['formData']);

    return MetadataSubmissionUpdate(
      id: json['id'],
      metadataSubmission: json['metadataSubmission'],
      resourceId: json['resourceId'],
      submissionId: json['submissionId'],
      resourceType: resourceType,
      // parentId: json['parentId'],
      updated: json['updated'] ?? false,
      created: json['created'] ?? false,
      formData: formData,
      dirty: json['dirty'] ?? false,
    );
  }

  static List<MetadataSubmissionUpdate> fromJsonList(
    List list, {
    required String resourceId,
    required String metadataSubmission,
    required MetadataResourceType resourceType,
    required String submissionId,
  }) {
    return list
        .map((item) => MetadataSubmissionUpdate.fromJson({
              ...item,
              'resourceId': resourceId,
              'submissionId': resourceId,
              'resourceType': resourceType.name,
              'metadataSubmission': metadataSubmission,
              'formData': {
                '_id': item['_id'],
                'submissionId': item['submissionId'],
                // '_parentId': parentId,
                'householdName': item['householdName'],
                'householdHeadSerialNumber': item['householdHeadSerialNumber'],
                'resourceType': resourceType.name,
                'resourceId': resourceId,
              },
            }))
        .toList();
  }

  ///this method will prevent the override of toString
  String resourceAsString() {
    return '#$householdHeadSerialNumber $householdName';
  }

  // ///this method will prevent the override of toString
  // bool userFilterByCreationDate(String filter) {
  //   return createdAt.toString().contains(filter);
  // }

  ///this method will prevent the override of toString
  bool userFilterBySerialName(String filter) {
    return resourceAsString().contains(filter);
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(MetadataSubmissionUpdate model) {
    return householdHeadSerialNumber == model.householdHeadSerialNumber &&
        householdName == model.householdName &&
        resourceId == model.resourceId;
  }

  @override
  String toString() => householdName ?? '';
}
