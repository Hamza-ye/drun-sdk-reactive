import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dynamicForm', apiResourceName: 'dynamicForms')
class DynamicForm extends IdentifiableEntity {
  @Column(nullable: true, type: ColumnType.TEXT)
  final List<DynamicFormField>? mainFields;

  @Column(nullable: true, type: ColumnType.TEXT)
  final List<DynamicFormField>? fields;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  DynamicForm({
    String? id,
    String? uid,
    String? name,
    String? code,
    this.mainFields,
    String? createdDate,
    String? lastModifiedDate,
    this.fields,
    this.activity,
    required dirty,
  }) : super(
          id: id,
          uid: uid,
          name: name,
          code: code,
          createdDate: createdDate,
          lastModifiedDate: lastModifiedDate,
          dirty: dirty,
        );

  // From JSON string (Database)
  factory DynamicForm.fromJson(Map<String, dynamic> json) {
    final mainFields = json['mainFields'] != null
        ? (parseDynamicList(json['mainFields']) as List)
        .map((mainField) => DynamicFormField.fromJson(mainField))
        .toList()
        : null;

    // final dynamic mainField = json['mainField'] != null
    //     ? DynamicFormField.fromJson(parseDynamicField(json['mainField']))
    //     : null;

    final fields = json['fields'] != null
        ? (parseDynamicList(json['fields']) as List)
            .map((field) => DynamicFormField.fromJson(field))
            .toList()
        : null;

    return DynamicForm(
      id: json['id'].toString(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      mainFields: mainFields /*json['mainField'] != null
          ? DynamicFormField.fromJson(jsonDecode(json['mainField']))
          : null*/,
      fields: fields/*json['fields'] != null
          ? (jsonDecode(json['fields']) as List)
              .map((field) => DynamicFormField.fromJson(field))
              .toList()
          : null*/,
      activity: json['activity'] is String
          ? json['activity']
          : json['activity']['uid'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      dirty: json['dirty'] ?? false,
    );
  }

  /// To JSON string for Database
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'code': code,
      'name': name,
      // 'mainField': mainField != null ? jsonEncode(mainField!.toJson()) : null,
      'mainFields': mainFields != null
          ? jsonEncode(mainFields!.map((field) => field.toJson()).toList())
          : null,
      'fields': fields != null
          ? jsonEncode(fields!.map((field) => field.toJson()).toList())
          : null,
      'activity': activity,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }
}
