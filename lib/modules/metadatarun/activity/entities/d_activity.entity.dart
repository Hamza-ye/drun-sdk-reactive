import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/project/entities/d_project.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dActivity', apiResourceName: 'activities')
class DActivity extends IdentifiableEntity {
  @ManyToOne(table: DProject, joinColumnName: 'project')
  dynamic project;

  @Column(nullable: true)
  String? startDate;

  @Column(nullable: true)
  String? endDate;

  @Column(type: ColumnType.BOOLEAN)
  bool disabled;

  @Column(nullable: true)
  final String? programs;

  @Column(nullable: true)
  final String? organisationUnits;

  @Column(nullable: true)
  final String? description;

  DActivity(
      {String? id,
      required String uid,
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
      this.programs,
      this.organisationUnits,
      this.description,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory DActivity.fromJson(Map<String, dynamic> json) {
    return DActivity(
        id: json['id'].toString(),
        uid: json['uid'],
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
                : json['project']['uid']
            : null,
        disabled: json['disabled'] ?? true,
        programs: json['programs'] != null ? json['programs'].toString() : null,
        organisationUnits: json['organisationUnits'] != null
            ? json['organisationUnits'].toString()
            : null,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['description'] = this.description;
    data['displayName'] = this.displayName;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['project'] = this.project;
    data['programs'] = this.programs;
    data['disabled'] = this.disabled;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['dirty'] = this.dirty;
    return data;
  }
}
