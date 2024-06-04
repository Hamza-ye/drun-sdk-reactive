import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/assignment/entities/d_assignment.entity.dart';
import 'package:d2_remote/modules/metadatarun/project/entities/d_project.entity.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
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
  bool inactive;

  @OneToMany(table: DAssignment)
  List<DAssignment>? assignments;

  @OneToMany(table: DTeam)
  List<DTeam>? teams;

  @Column(nullable: true)
  final String? programs;

  @Column(nullable: true)
  final String? organisationUnits;

  DActivity(
      {required String uid,
      int? id,
      String? created,
      String? lastUpdated,
      String? name,
      String? shortName,
      this.project,
      String? code,
      String? displayName,
      this.startDate,
      this.endDate,
      required this.inactive,
      this.assignments,
      this.teams,
      this.programs,
      this.organisationUnits,
      required dirty})
      : super(
            uid: uid,
            id: id,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory DActivity.fromJson(Map<String, dynamic> json) {
    return DActivity(
        uid: json['uid'],
        id: json['id'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        project: json['project'],
        inactive: json['inactive'] ?? false,
        assignments: (json['assignments'] ?? [])
            .map<DAssignment>((assignment) => DAssignment.fromJson({
                  ...assignment,
                  'activity': json['id'].toString(),
                  'dirty': false
                }))
            .toList(),
        teams: (json['teams'] ?? [])
            .map<DTeam>((team) => DTeam.fromJson(
                {...team, 'activity': json['id'].toString(), 'dirty': false}))
            .toList(),
        programs: json['programs'].toString(),
        organisationUnits: json['organisationUnits'].toString(),
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
    data['assignments'] = this.assignments;
    data['teams'] = this.teams;
    data['inactive'] = this.inactive;
    data['dirty'] = this.dirty;
    return data;
  }
}
