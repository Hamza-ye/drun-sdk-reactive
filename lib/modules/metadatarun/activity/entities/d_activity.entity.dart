import 'package:d2_remote/core/annotations/index.dart' as legacy;
import 'package:d2_remote/modules/datarun/form/entities/form_template.entity.dart';
import 'package:d2_remote/modules/metadatarun/project/entities/d_project.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@legacy.AnnotationReflectable
@legacy.Entity(tableName: 'activity', apiResourceName: 'activities')
class Activity extends IdentifiableEntity {
  @legacy.ManyToOne(table: Project, joinColumnName: 'project')
  dynamic project;

  @legacy.Column(nullable: true)
  String? startDate;

  @legacy.Column(nullable: true)
  String? endDate;

  @legacy.Column(type: legacy.ColumnType.BOOLEAN)
  bool disabled;

  @legacy.Column(nullable: true)
  final String? programs;

  @legacy.Column(nullable: true)
  final String? organisationUnits;

  @legacy.Column(nullable: true)
  final String? description;

  @legacy.OneToMany(table: FormTemplate)
  List<FormTemplate>? formTemplates;

  Activity(
      {required String id,
      // required String uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? shortName,
      this.project,
      String? code,
      String? displayName,
      this.startDate,
      this.endDate,
      required this.disabled,
      this.formTemplates,
      this.programs,
      this.organisationUnits,
      this.description,
      required dirty})
      : super(
            id: id,
            // uid: uid,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
        id: json['uid'] ?? json['id'].toString(),
        // uid: json['uid'],
        name: json['name'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        shortName: json['shortName'],
        description: json['description'],
        code: json['code'],
        displayName: json['displayName'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        project: json['project'] != null
            ? json['project'] is String
                ? json['project']
                : json['project']['uid'] ?? json['project']['id']
            : null,
        disabled: json['disabled'] ?? true,
        programs: json['programs'] != null ? json['programs'].toString() : null,
        formTemplates: (json['assignments'] ?? [])
            .map<FormTemplate>((formTemplate) => FormTemplate.fromJson({
                  ...formTemplate,
                  'activity': json['uid'] ?? json['id'],
                  'dirty': false
                }))
            .toList(),
        organisationUnits: json['organisationUnits'] != null
            ? json['organisationUnits'].toString()
            : null,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['description'] = this.description;
    data['displayName'] = this.displayName;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['project'] = this.project;
    data['formTemplates'] = this.formTemplates;
    data['programs'] = this.programs;
    data['disabled'] = this.disabled;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['dirty'] = this.dirty;
    return data;
  }
}
