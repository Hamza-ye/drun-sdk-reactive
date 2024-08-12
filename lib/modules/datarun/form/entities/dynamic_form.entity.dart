
import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_definition.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dynamicForm', apiResourceName: 'dataForms')
class DynamicForm extends IdentifiableEntity {
  @Column(nullable: false, type: ColumnType.INTEGER)
  final int version;

  @OneToMany(table: FormDefinition)
  final List<FormDefinition> formDefinitions; // Store JSON string in SQLite

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  DynamicForm({
    String? id,
    String? uid,
    String? name,
    String? code,
    String? createdDate,
    String? lastModifiedDate,
    required this.version,
    required this.formDefinitions,
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

  // From JSON string (Database and API)
  factory DynamicForm.fromJson(Map<String, dynamic> json) {
    return DynamicForm(
      id: json['id'],
      formDefinitions: List<dynamic>.from(json['formDefinitions'] ?? [])
          .map((definition) => FormDefinition.fromJson({
                ...definition,
                'id': '${definition['uid']}_${json['version']}',
                'uid': '${definition['uid']}_${json['version']}',
                'form': json['uid'],
                'dirty': false
              }))
          .toList(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
      activity: json['activity'] is String
          ? json['activity']
          : json['activity']['uid'],
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
      'formDefinitions': formDefinitions,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }
}
