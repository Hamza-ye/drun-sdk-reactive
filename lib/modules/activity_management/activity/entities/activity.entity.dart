import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/activity_management/assignment/entities/assignment.entity.dart';
import 'package:d2_remote/modules/activity_management/project/entities/project.entity.dart';
import 'package:d2_remote/modules/activity_management/team/entities/team.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'activity', apiResourceName: 'old-activities')
class Activity extends IdentifiableEntity {
  @ManyToOne(table: Project, joinColumnName: 'project')
  dynamic project;

  @Column(nullable: true)
  String? startDate;

  @Column(nullable: true)
  String? endDate;

  @Column(type: ColumnType.BOOLEAN)
  bool inactive;

  @OneToMany(table: Assignment)
  List<Assignment>? assignments;

  @OneToMany(table: Team)
  List<Team>? teams;

  @Column(nullable: true)
  final String? programs;

  @Column(nullable: true)
  final String? organisationUnits;

  Activity(
      {required String id,
      String? uid,
      String? created,
      String? lastUpdated,
      required String name,
      required String shortName,
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
            id: id,
            uid: uid,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
        id: json['id'],
        uid: json['uid'],
        name: json['name'],
        created: json['created'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        project: json['project'],
        inactive: json['inactive'] ?? false,
        assignments: (json['assignments'] ?? [])
            .map<Assignment>((assignment) => Assignment.fromJson(
                {...assignment, 'activity': json['uid'], 'dirty': false}))
            .toList(),
        teams: (json['teams'] ?? [])
            .map<Team>((team) => Team.fromJson(
                {...team, 'activity': json['uid'], 'dirty': false}))
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
    data['created'] = this.created;
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
