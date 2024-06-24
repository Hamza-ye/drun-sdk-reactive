import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dynamicForm', apiResourceName: 'dynamicForms')
class DynamicForm extends IdentifiableEntity {
  @Column(nullable: true, type: ColumnType.TEXT, name: "mainField")
  DynamicFormField? mainField;

  @Column(nullable: true, type: ColumnType.TEXT)
  List<DynamicFormField>? fields;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  DynamicForm({
    String? id,
    String? uid,
    String? name,
    String? code,
    this.mainField,
    String? created,
    String? lastUpdated,
    this.fields,
    this.activity,
    required dirty,
  }) : super(
          id: id,
          uid: uid,
          name: name,
          code: code,
          created: created,
          lastUpdated: lastUpdated,
          dirty: dirty,
        );

  factory DynamicForm.fromJson(Map<String, dynamic> json) {
    return DynamicForm(
      id: json['id'].toString(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      mainField: json['mainField'] != null
          ? DynamicFormField.fromJson(jsonDecode(json['mainField']))
          : null,
      created: json['createdDate'],
      lastUpdated: json['lastModifiedDate'],
      fields: json['fields'] != null
          ? (jsonDecode(json['fields']) as List)
              .map((field) => DynamicFormField.fromJson(field))
              .toList()
          : null,
      activity: json['activity'] is String
          ? json['activity']
          : json['activity']['uid'],
      dirty: json['dirty'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'code': code,
      'name': name,
      'mainField': mainField != null ? jsonEncode(mainField!.toJson()) : null,
      'fields': fields != null
          ? jsonEncode(fields!.map((field) => field.toJson()).toList())
          : null,
      'activity': activity,
      'dirty': dirty,
    };
  }
}
