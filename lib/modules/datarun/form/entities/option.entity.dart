import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/form/entities/dynamic_form.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'option', apiResourceName: 'options')
class FormOption extends IdentifiableEntity {
  @ManyToOne(table: DynamicForm, joinColumnName: 'form')
  dynamic form;

  @Column(nullable: false, type: ColumnType.TEXT)
  final Map<String, String> label;

  @Column(nullable: false)
  final String listName;

  FormOption(
      {String? id,
      String? uid,
      required String name,
      String? code,
      String? createdDate,
      String? lastModifiedDate,
      required this.label,
      required this.listName,
      required this.form,
      required dirty})
      : super(
          id: id,
          uid: uid,
          name: name,
          code: code,
          createdDate: createdDate,
          lastModifiedDate: lastModifiedDate,
          dirty: dirty,
        );

  factory FormOption.fromJson(Map<String, dynamic> json) {
    return FormOption(
      id: json['id'],
      uid: json['uid'],
      name: json['name'],
      code: json['code'],
      form: json['form'],
      createdDate: json['createdDate'],
      lastModifiedDate: json['lastModifiedDate'],
      listName: json['listName'],
      label: Map<String, String>.from(
          json['label'] is String ? jsonDecode(json['label']) : json['label']),
      dirty: false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'form': form,
      'id': id,
      'uid': uid,
      'code': code,
      'name': name,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'listName': listName,
      'label': label,
      'dirty': dirty,
    };
  }
}
