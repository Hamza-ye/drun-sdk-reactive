import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
import 'package:d2_remote/modules/activity_management/team/entities/team.entity.dart';
import 'package:d2_remote/modules/metadata/organisation_unit/entities/organisation_unit.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'assignment', apiResourceName: 'assignments')
class Assignment extends IdentifiableEntity {
  @ManyToOne(table: Activity, joinColumnName: 'activity')
  dynamic activity;

  @ManyToOne(table: Team, joinColumnName: 'team')
  dynamic team;

  @ManyToOne(table: OrganisationUnit, joinColumnName: 'organisationUnit')
  dynamic organisationUnit;

  @Column(nullable: true)
  String? startDate;

  @Column(type: ColumnType.TEXT)
  String? status;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? targetSource;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? startPeriod;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? period;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? periodType;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? warehouse;

  Assignment(
      {required String id,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      this.warehouse,
      this.activity,
      this.organisationUnit,
      this.team,
      this.startDate,
      this.status,
      this.startPeriod,
      this.period,
      this.periodType,
      required dirty})
      : super(
            uid: id,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory Assignment.fromJson(Map<String, dynamic> json) {
    final team = json['team'] is String ? json['team'] : json['team']['uid'];
    return Assignment(
        id: json['uid'],
        name: json['name'],
        created: json['createdDate'],
        code: json['code'],
        activity: json['activity']['uid'],
        organisationUnit: json['organisationUnit']['uid'],
        team: team,
        warehouse: json['warehouse']['uid'],
        startDate: json['startDate'],
        status: json['status'],
        startPeriod: json['startPeriod'],
        period: json['period'],
        periodType: json['periodType'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.id;
    data['id'] = this.id;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activity'] = this.activity;
    data['organisationUnit'] = this.organisationUnit;
    data['team'] = this.team;
    data['warehouse'] = jsonEncode({'uid': this.warehouse});
    data['startDate'] = this.startDate;
    data['status'] = this.status;
    data['startPeriod'] = this.startPeriod;
    data['period'] = this.period;
    data['periodType'] = this.periodType;
    data['dirty'] = this.dirty;
    return data;
  }
}
