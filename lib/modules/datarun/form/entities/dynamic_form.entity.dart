import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_definition.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'formTemplate', apiResourceName: 'dataForms')
class FormTemplate extends IdentifiableEntity {
  @Column(nullable: false, type: ColumnType.INTEGER)
  final int version;

  @OneToMany(table: FormTemplateV)
  final List<FormTemplateV> formVersions; // Store JSON string in SQLite

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
    required this.formVersions,
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
  factory FormTemplate.fromJson(Map<String, dynamic> json) {
    final activity =
        json['activity'] is String ? json['activity'] : json['activity']['uid'];

    return FormTemplate(
      id: json['uid'],
      formVersions: List<dynamic>.from(json['formTemplateVersions'] ?? [])
          .map((definition) => FormTemplateV.fromJson({
                ...definition,
                'id': '${definition['uid']}_${json['version']}',
                'uid': '${definition['uid']}_${json['version']}',
                'formTemplate': json['uid'],
                'activity': activity,
                'dirty': false
              }))
          .toList(),
      uid: json['uid'],
      code: json['code'],
      name: json['name'],
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
      'formVersions': formVersions,
      'createdDate': createdDate,
      'lastModifiedDate': lastModifiedDate,
      'dirty': dirty,
    };
  }
}
