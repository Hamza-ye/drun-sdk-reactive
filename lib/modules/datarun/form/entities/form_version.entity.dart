import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/option_set.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'formVersion', apiResourceName: 'formVersions')
class FormVersion extends IdentifiableEntity {
  @ManyToOne(table: FormTemplate, joinColumnName: 'formTemplate')
  dynamic formTemplate;

  @Column(nullable: true, type: ColumnType.TEXT)
  List<FieldTemplate> fields = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<FormOption> options = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<DOptionSet> optionSets = [];

  @Column(nullable: false, type: ColumnType.TEXT)
  Map<String, String> label = {};

  @Column(nullable: false, type: ColumnType.TEXT)
  String defaultLocal;

  @Column(nullable: false)
  String activity;

  /// current Version
  @Column(nullable: false, type: ColumnType.INTEGER)
  int version;

  @Column(nullable: true, type: ColumnType.TEXT)
  List<String> orgUnits = [];

  FormVersion({
    String? id,
    String? uid,
    String? name,
    String? code,
    String? createdDate,
    String? lastModifiedDate,
    required this.activity,
    this.formTemplate,
    required this.version,
    required this.defaultLocal,
    List<FieldTemplate> fields = const [],
    List<FormOption> options = const [],
    List<DOptionSet> optionSets = const [],
    Map<String, String> label = const {},
    List<String> orgUnits = const [],
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
    this.orgUnits.addAll(orgUnits);
  }

  factory FormVersion.fromJson(Map<String, dynamic> json) {
    final activity =
        json['activity'] is String ? json['activity'] : json['activity']['uid'];

    final orgUnits = json['orgUnits'] != null
        ? json['orgUnits'].runtimeType == String
            ? jsonDecode(json['orgUnits']).cast<String>()
            : json['orgUnits'].cast<String>()
        : <String>[];

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

    final optionSets = json['optionSets'] != null
        ? (parseDynamicJson(json['optionSets']) as List)
            .map((optionSet) => DOptionSet.fromJson(optionSet))
            .toList()
        : <DOptionSet>[];

    return FormVersion(
      id: json['id'],
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      activity: activity,
      version: json['version'],
      formTemplate: json['formTemplate'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      defaultLocal: json['defaultLocal'] ?? 'en',
      fields: fields,
      options: options,
      optionSets: optionSets,
      orgUnits: orgUnits,
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      dirty: json['dirty'] ?? false,
    );
  }

  factory FormVersion.fromApi(Map<String, dynamic> json) {
    final activity =
        json['activity'] is String ? json['activity'] : json['activity']['uid'];

    final orgUnits = json['orgUnits'] != null
        ? json['orgUnits'].runtimeType == String
            ? jsonDecode(json['orgUnits']).cast<String>()
            : json['orgUnits'].cast<String>()
        : <String>[];

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map((field) => FieldTemplate.fromJson(field))
            .toList()
        : <FieldTemplate>[];

    final options = json['options'] != null
        ? (parseDynamicJson(json['options']) as List)
            .map((option) => FormOption.fromJson(option))
            .toList()
        : <FormOption>[];

    // final fieldsWithOptions = fields
    //     .map((field) => field
    //       ..options.addAll(
    //           options.where((option) => option.listName == field.listName)))
    //     .toList();

    final optionSets = json['optionSets'] != null
        ? (parseDynamicJson(json['optionSets']) as List)
            .map((optionSet) => DOptionSet.fromJson(optionSet))
            .toList()
        : <DOptionSet>[];

    return FormVersion(
      id: '${json['uid']}_${json['version']}',
      uid: '${json['uid']}_${json['version']}',
      code: json['code'],
      name: json['name'],
      activity: activity,
      version: json['version'],
      formTemplate: json['formTemplate'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      defaultLocal: json['defaultLocal'] ?? 'en',
      fields: fields,
      options: options,
      optionSets: optionSets,
      orgUnits: orgUnits,
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
      'activity': activity,
      'version': version,
      'formTemplate': formTemplate,
      'label': jsonEncode(label),
      'defaultLocal': defaultLocal,
      'orgUnits': jsonEncode(orgUnits),
      'fields': jsonEncode(fields.map((field) => field.toJson()).toList()),
      'options': jsonEncode(options.map((option) => option.toJson()).toList()),
      'optionSets': jsonEncode(
          optionSets.map((optionSet) => optionSet.toJson()).toList()),
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }
}
