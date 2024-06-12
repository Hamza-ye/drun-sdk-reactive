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
  bool activated;

  @Column(nullable: true)
  final String? programs;

  @Column(nullable: true)
  final String? organisationUnits;

  DActivity(
      {String? id,
      required String uid,
      String? created,
      String? lastUpdated,
      String? name,
      String? shortName,
      this.project,
      String? code,
      String? displayName,
      this.startDate,
      this.endDate,
      this.activated = true,
      this.programs,
      this.organisationUnits,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory DActivity.fromJson(Map<String, dynamic> json) {
    return DActivity(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        project: json['project'] != null
            ? json['project'] is String
                ? json['project']
                : json['project']['uid']
            : null,
        activated: json['activated'] ?? true,
        programs: json['programs'] != null ? json['programs'].toString() : null,
        organisationUnits: json['organisationUnits'] != null
            ? json['organisationUnits'].toString()
            : null,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastUpdated'] = this.lastUpdated;
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['project'] = this.project;
    data['programs'] = this.programs;
    data['activated'] = this.activated;
    data['dirty'] = this.dirty;
    return data;
  }
}
