import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/json_factory.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/field_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/section_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/template.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/option_set.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/template_extensions/form_traverse_extension.dart';
import 'package:d2_remote/modules/datarun/form/shared/template_extensions/template_path_walking_service.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

@AnnotationReflectable
@Entity(tableName: 'formVersion', apiResourceName: 'formVersions')
class FormVersion extends IdentifiableEntity with TemplatePathWalkingService<Template> {
  @ManyToOne(table: FormTemplate, joinColumnName: 'formTemplate')
  dynamic formTemplate;

  @Column(nullable: true, type: ColumnType.TEXT)
  List<Template> fields = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<FormOption> options = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  List<DOptionSet> optionSets = [];

  @Column(nullable: false, type: ColumnType.TEXT)
  Map<String, String> label = {};

  @Column(nullable: false, type: ColumnType.TEXT)
  String defaultLocal;

  @Column(nullable: true, type: ColumnType.TEXT)
  IList<Template> fieldsConf;

  @Column(nullable: true, type: ColumnType.TEXT)
  IList<Template> sections;

  @Column(nullable: true, type: ColumnType.TEXT)
  String? description;

  /// current Version
  @Column(nullable: false, type: ColumnType.INTEGER)
  int version;

  // @Column(nullable: true, type: ColumnType.TEXT)
  // List<Template> flattenedFields = [];

  FormVersion({
    String? id,
    String? uid,
    String? name,
    String? code,
    String? createdDate,
    String? lastModifiedDate,
    this.description,
    this.formTemplate,
    required this.version,
    required this.defaultLocal,
    List<Template> fields = const [],
    // List<Template> flattenedFields = const [],
    // Map<String, Template>? flattenFieldsMap,
    List<FormOption> options = const [],
    List<DOptionSet> optionSets = const [],
    Map<String, String> label = const {},
    List<String> orgUnits = const [],
    Iterable<Template>? fieldsConf,
    Iterable<Template>? sections,
    required dirty,
  })  : this.fieldsConf = IList.orNull(fieldsConf) ?? IList(),
        this.sections = IList.orNull(sections) ?? IList(),
        // this.flattenFieldsMap = IMap.orNull(flattenFieldsMap) ?? IMap(),
        super(
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
  }

  factory FormVersion.fromJson(Map<String, dynamic> json) {
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
            .map((field) => TemplateJsonFactory.fromJsonFactory(field))
            .toList()
        : <Template>[];

    final fieldsConf = json['fieldsConf'] != null
        ? (parseDynamicJson(json['fieldsConf']) as List)
            .map((field) => FieldTemplate.fromJson(field))
            .toList()
        : <Template>[];

    final sections = json['sections'] != null
        ? (parseDynamicJson(json['sections']) as List)
            .map((field) => SectionTemplate.fromJson(field))
            .toList()
        : <Template>[];

    // final flattenedFields = json['flattenedFields'] != null
    //     ? (parseDynamicJson(json['flattenedFields']) as List)
    //         .map((field) => TemplateJsonFactory.fromJsonFactory(field))
    //         .toList()
    //     : <Template>[];

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
      version: json['version'],
      formTemplate: json['formTemplate'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      defaultLocal: json['defaultLocal'] ?? 'en',
      fields: fields,
      // flattenedFields: flattenedFields,
      fieldsConf: fieldsConf,
      sections: sections,
      options: options,
      optionSets: optionSets,
      orgUnits: orgUnits,
      description: json['description'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      dirty: json['dirty'] ?? false,
    );
  }

  factory FormVersion.fromApi(Map<String, dynamic> json) {
    final orgUnits = json['orgUnits'] != null
        ? json['orgUnits'].runtimeType == String
            ? jsonDecode(json['orgUnits']).cast<String>()
            : json['orgUnits'].cast<String>()
        : <String>[];

    final fields = json['fields'] != null
        ? (parseDynamicJson(json['fields']) as List)
            .map((field) => TemplateJsonFactory.fromJsonFactory(field))
            .toList()
        : <FieldTemplate>[];

    final fieldsConf = json['fieldsConf'] != null
        ? (parseDynamicJson(json['fieldsConf']) as List)
            .map((field) => TemplateJsonFactory.fromJsonFactory(field))
            .toList()
        : <Template>[];

    final sections = json['sections'] != null
        ? (parseDynamicJson(json['sections']) as List)
            .map((field) => TemplateJsonFactory.fromJsonFactory(field))
            .toList()
        : <Template>[];

    // final flattenedFields = json['flattenedFields'] != null
    //     ? (parseDynamicJson(json['flattenedFields']) as List)
    //         .map((field) => TemplateJsonFactory.fromJsonFactory(field))
    //         .toList()
    //     : <FieldTemplate>[];

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

    return FormVersion(
      id: json['id'],
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      version: json['version'],
      formTemplate: json['formTemplate'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      defaultLocal: json['defaultLocal'] ?? 'en',
      fields: fields,
      // flattenedFields: flattenedFields,
      fieldsConf: fieldsConf,
      sections: sections,
      options: options,
      optionSets: optionSets,
      orgUnits: orgUnits,
      description: json['description'],
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
      // 'activity': activity,
      'version': version,
      'formTemplate': formTemplate,
      'label': jsonEncode(label),
      'defaultLocal': defaultLocal,
      'description': description,
      // 'orgUnits': jsonEncode(orgUnits),
      'fields': jsonEncode(fields
          .map((field) => TemplateJsonFactory.toJsonFactory(field))
          .toList()),
      // 'flattenedFields': jsonEncode(flattenedFields
      //     .map((field) => TemplateJsonFactory.toJsonFactory(field))
      //     .toList()),
      'fieldsConf': jsonEncode(fieldsConf.unlock
          .map((field) => TemplateJsonFactory.toJsonFactory(field))
          .toList()),
      'sections': jsonEncode(sections.unlock
          .map((field) => TemplateJsonFactory.toJsonFactory(field))
          .toList()),
      'options': jsonEncode(options.map((option) => option.toJson()).toList()),
      'optionSets': jsonEncode(
          optionSets.map((optionSet) => optionSet.toJson()).toList()),
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }

  @Column(nullable: true, type: ColumnType.TEXT)
  IMap<String, Template>? flattenFieldsMap;

  @Column(nullable: true, type: ColumnType.TEXT)
  IList<Template>? treeFields;

  @override
  Iterable<Template> get flatFieldsList => formFlatFields.values;
}
