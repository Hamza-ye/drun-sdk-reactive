import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/allowed_action.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/scanned_code_properties.dart';
import 'package:d2_remote/modules/datarun/form/shared/metadata_resource_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

@AnnotationReflectable
@Entity(tableName: 'dataElement', apiResourceName: 'dataElements')
class DataElement extends IdentifiableEntity {
  @Column(nullable: true, type: ColumnType.TEXT)
  final String? description;

  @Column(nullable: true, type: ColumnType.TEXT)
  final ValueType? type;

  @Column(nullable: true, type: ColumnType.BOOLEAN)
  final bool mandatory;

  @Column(nullable: true, type: ColumnType.TEXT)
  final dynamic defaultValue;

  @Column(nullable: true, type: ColumnType.TEXT)
  final IMap<String, String?> label;

  @Column(nullable: true, type: ColumnType.TEXT)
  final ScannedCodeProperties? scannedCodeProperties;

  @Column(nullable: true, type: ColumnType.BOOLEAN)
  final bool gs1Enabled;

  /// references to other entities
  @Column(nullable: true, type: ColumnType.TEXT)
  final MetadataResourceType? resourceType;

  @Column(nullable: true, type: ColumnType.TEXT)
  final String? resourceMetadataSchema;

  @Column(nullable: true, type: ColumnType.TEXT)
  final IList<AllowedAction> allowedActions;

  DataElement(
      {String? id,
      String? uid,
      String? name,
      String? code,
      String? createdDate,
      String? lastModifiedDate,
      this.description,
      this.mandatory = false,
      this.type,
      this.resourceType,
      this.resourceMetadataSchema,
      this.defaultValue,
      this.gs1Enabled = false,
      Iterable<AllowedAction>? allowedActions,
      this.label = const IMap.empty(),
      this.scannedCodeProperties,
      required dirty})
      : this.allowedActions =
            IList.orNull(allowedActions) ?? const IList<AllowedAction>.empty(),
        super(id: id, uid: uid, name: name, code: code, dirty: dirty);

  factory DataElement.fromJson(Map<String, dynamic> json) {
    final valueType = ValueType.getValueType(json['type']);

    final resourceType = json['resourceType'] != null
        ? MetadataResourceType.getType(json['resourceType'])
        : null;

    final allowedActions = json['allowedActions'] != null
        ? (parseDynamicJson(json['allowedActions']) as List)
            .map<AllowedAction>((action) => AllowedAction.getValueType(action))
            .toList()
        : <AllowedAction>[];

    final label = json['label'] != null
        ? Map<String, String?>.from(
            json['label'] is String ? jsonDecode(json['label']) : json['label'])
        : <String, String?>{"en": json['name']};

    return DataElement(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        description: json['description'],
        label: label.lock,
        type: valueType,
        allowedActions: allowedActions,
        mandatory: json['mandatory'] ?? false,
        gs1Enabled: json['gs1Enabled'] ?? false,
        resourceType: resourceType,
        resourceMetadataSchema: json['resourceMetadataSchema'],
        defaultValue: json['defaultValue'] != null
            ? json['defaultValue'] is String
                ? json['defaultValue']
                : json['defaultValue'] as String
            : null,
        scannedCodeProperties: json['scannedCodeProperties'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'uid': this.uid,
      'code': this.code,
      'name': this.name,
      'description': this.description,
      'createdDate': this.createdDate,
      'lastModifiedDate': this.lastModifiedDate,
      'dirty': this.dirty,
      'type': type?.name,
      'resourceType': resourceType?.name,
      'mandatory': mandatory,
      'defaultValue': defaultValue != null ? defaultValue.toString() : null,
      'resourceMetadataSchema': resourceMetadataSchema,
      'label': jsonEncode(label.unlockView),
      'scannedCodeProperties': scannedCodeProperties?.toJson() != null
          ? jsonEncode(scannedCodeProperties!.toJson())
          : null,
    };
  }
}
