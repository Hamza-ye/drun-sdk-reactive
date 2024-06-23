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
  @Column(nullable: true, type: ColumnType.TEXT)
  DynamicFormField? mainField;

  @Column(nullable: true, type: ColumnType.TEXT)
  List<DynamicFormField>? fields;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  DynamicForm(
      {String? id,
      String? uid,
      String? name,
      String? code,
      DynamicFormField? mainField,
      String? created,
      String? lastUpdated,
      this.fields,
      this.activity,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory DynamicForm.fromJson(Map<String, dynamic> json) {
    final fields = json["fields"].runtimeType == String
        ? jsonDecode(json["fields"])
        : json["fields"];

    final mainField = json["mainField"].runtimeType == String
        ? jsonDecode(json["mainField"])
        : json["mainField"];

    return DynamicForm(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        mainField: DynamicFormField.fromJson(mainField),
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        fields: List<dynamic>.from(fields ?? [])
            .map((field) => DynamicFormField.fromJson(field))
            .toList(),
        activity: json['activity'] is String
            ? json['activity']
            : json['activity']['uid'],
        dirty: json['dirty'] ?? false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['name'] = name;
    data['mainField'] = mainField?.toJson();
    data['fields'] = this.fields?.map((field) => field.toJson()).toList() ?? [];
    data['activity'] = activity;
    data['dirty'] = dirty;
    return data;
  }
}
