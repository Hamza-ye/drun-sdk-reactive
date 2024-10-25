import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/option_set.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/modules/metadata/option_set/entities/option_set.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

@AnnotationReflectable
@Entity(tableName: 'formTemplate', apiResourceName: 'dataForms')
class FormTemplate extends IdentifiableEntity {
  /// template latest Version
  @Column(nullable: false, type: ColumnType.INTEGER)
  int version;

  @Column(nullable: false, type: ColumnType.TEXT)
  Map<String, String> label = {};

  @OneToMany(table: FormVersion)
  List<FormVersion>? formVersions;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  FormTemplate({
    String? id,
    String? uid,
    String? name,
    String? code,
    String? createdDate,
    String? lastModifiedDate,
    required this.version,
    this.formVersions,
    this.activity,
    Map<String, String> label = const {},
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
    label.addAll(label);
  }

  // From JSON string (Database and API)
  factory FormTemplate.fromJson(Map<String, dynamic> json) {
    final activity =
        json['activity'] is String ? json['activity'] : json['activity']['uid'];

    return FormTemplate(
      id: json['uid'],
      formVersions: List<dynamic>.from(json['formVersions'] ?? [])
          .map((formVersion) => FormVersion.fromJson({
                ...formVersion,
                'id': formVersion['uid'],
                'uid': formVersion['uid'],
                'formTemplate': formVersion['formTemplate'],
              }))
          .toList(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      activity: activity,
      version: json['version'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      dirty: json['dirty'] ?? false,
    );
  }

  factory FormTemplate.fromApi(Map<String, dynamic> json) {
    final activity =
        json['activity'] is String ? json['activity'] : json['activity']['uid'];

    final options = json['options'] != null
        ? (parseDynamicJson(json['options']) as List)
            .map((option) => FormOption.fromJson(option))
            .toList()
        : <FormOption>[];

    final optionSets = Map.fromIterable(options,
            key: (item) => item.listName,
            value: (item) => options.where((t) => t.listName == item.listName))
        .entries
        .map((e) => DOptionSet(listName: e.key, options: e.value.toList()).toJson())
        .toList();

    return FormTemplate(
      id: json['uid'],
      formVersions: List<dynamic>.from(json['formVersions'] ?? [])
          .map((formVersion) => FormVersion.fromApi({
                ...formVersion,
                // 'id': '${formVersion['uid']}_${json['version']}',
                // 'uid': '${formVersion['uid']}_${json['version']}',
                'formTemplate': json['uid'],
                'activity': formVersion['activity'],
                'optionSets': optionSets,
                'dirty': false
              }))
          .toList(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      label: json['label'] != null
          ? Map<String, String>.from(json['label'] is String
              ? jsonDecode(json['label'])
              : json['label'])
          : {"en": json['name']},
      activity: activity,
      version: json['version'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
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
      'activity': activity,
      'label': jsonEncode(label),
      'formVersions': formVersions,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }
}
