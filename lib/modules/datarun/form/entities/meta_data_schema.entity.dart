import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/metadata_resource_type.dart';
import 'package:d2_remote/modules/datarun/form/shared/option_set.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'metadataSchema', apiResourceName: 'metadataSchemas')
class MetadataSchema extends IdentifiableEntity {
  @Column(nullable: true, type: ColumnType.TEXT)
  final MetadataResourceType? resourceType;

  @Column(nullable: true, type: ColumnType.TEXT)
  List<FieldTemplate> fields = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<FieldTemplate> flattenedFields = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<FormOption> options = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<DOptionSet> optionSets = [];

  @Column(nullable: false, type: ColumnType.TEXT)
  Map<String, String> label = {};

  @Column(nullable: false, type: ColumnType.TEXT)
  String defaultLocal;

  MetadataSchema({
    String? id,
    String? uid,
    String? name,
    String? code,
    String? createdDate,
    String? lastModifiedDate,
    required this.defaultLocal,
    List<FieldTemplate> fields = const [],
    List<FieldTemplate> flattenedFields = const [],
    List<FormOption> options = const [],
    List<DOptionSet> optionSets = const [],
    Map<String, String> label = const {},
    List<String> orgUnits = const [],
    required this.resourceType,
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
    this.fields.addAll(fields);
    this.options.addAll(options);
    this.optionSets.addAll(optionSets);
    this.label.addAll(label);
    this.flattenedFields.addAll(flattenedFields);
  }

  factory MetadataSchema.fromJson(Map<String, dynamic> json) {
    final resourceType = MetadataResourceType.getType(json['resourceType']);
    final options = json['options'] != null
        ? (parseDynamicJson(json['options']) as List)
            .map((option) => FormOption.fromJson(option))
            .toList()
        : <FormOption>[];

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map((field) => FieldTemplate.fromJson(field))
            .toList()
        : <FieldTemplate>[];

    final flattenedFields = json['flattenedFields'] != null
        ? (parseDynamicJson(json['flattenedFields']) as List)
            .map((field) => FieldTemplate.fromJson(field))
            .toList()
        : <FieldTemplate>[];

    final optionSets = json['optionSets'] != null
        ? (parseDynamicJson(json['optionSets']) as List)
            .map((optionSet) => DOptionSet.fromJson(optionSet))
            .toList()
        : <DOptionSet>[];

    return MetadataSchema(
      resourceType: resourceType,
      id: json['id'],
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      defaultLocal: json['defaultLocal'] ?? 'en',
      fields: fields,
      flattenedFields: flattenedFields,
      options: options,
      optionSets: optionSets,
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      dirty: json['dirty'] ?? false,
    );
  }

  factory MetadataSchema.fromApi(Map<String, dynamic> json) {
    final resourceType = MetadataResourceType.getType(json['resourceType']);

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map((field) => FieldTemplate.fromJson(field))
            .toList()
        : <FieldTemplate>[];

    final flattenedFields = json['flattenedFields'] != null
        ? (parseDynamicJson(json['flattenedFields']) as List)
            .map((field) => FieldTemplate.fromJson(field))
            .toList()
        : <FieldTemplate>[];

    final options = json['options'] != null
        ? (parseDynamicJson(json['options']) as List)
            .map((option) => FormOption.fromJson(option))
            .toList()
        : <FormOption>[];

    final optionSets = json['optionSets'] != null
        ? (parseDynamicJson(json['optionSets']) as List)
            .map((optionSet) => DOptionSet.fromJson(optionSet))
            .toList()
        : <DOptionSet>[];

    return MetadataSchema(
      resourceType: resourceType,
      id: '${json['uid']}_${json['version']}',
      uid: '${json['uid']}_${json['version']}',
      code: json['code'],
      name: json['name'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      defaultLocal: json['defaultLocal'] ?? 'en',
      fields: fields,
      flattenedFields: flattenedFields,
      options: options,
      optionSets: optionSets,
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      dirty: json['dirty'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'code': code,
      'name': name,
      'label': jsonEncode(label),
      'defaultLocal': defaultLocal,
      'fields': jsonEncode(fields.map((field) => field.toJson()).toList()),
      'flattenedFields':
          jsonEncode(flattenedFields.map((field) => field.toJson()).toList()),
      'options': jsonEncode(options.map((option) => option.toJson()).toList()),
      'optionSets': jsonEncode(
          optionSets.map((optionSet) => optionSet.toJson()).toList()),
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }
}
