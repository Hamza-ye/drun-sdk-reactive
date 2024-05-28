import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/modules/teams/entities/d_team.entity.dart';
import 'package:d2_remote/modules/village_location/entities/d_organisation_unit.entity.dart';
import 'package:d2_remote/modules/warehouse/entities/warehouse.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'assignment', apiResourceName: 'assignments')
class DAssignment extends IdentifiableEntity {
  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  @ManyToOne(table: DTeam, joinColumnName: 'team')
  dynamic team;

  @ManyToOne(table: DOrganisationUnit, joinColumnName: 'organisationUnit')
  dynamic organisationUnit;

  @ManyToOne(table: Warehouse, joinColumnName: 'warehouse')
  dynamic warehouse;

  @Column(nullable: true)
  String? startDate;

  @Column(type: ColumnType.TEXT, nullable: true)
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
  String? gov;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? district;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? subdistrict;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? village;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? subvillage;

  DAssignment(
      {required String uid,
        int? id,
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
      this.gov,
      this.district,
      this.subdistrict,
      this.village,
      this.subvillage,

      required dirty})
      : super(
            id: id,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            uid: uid,
            dirty: dirty);

  factory DAssignment.fromJson(Map<String, dynamic> json) {
    // final team = json['team'] is String ? json['team'] : json['team']['id'].toString();
    return DAssignment(
        id: json['id'],
        uid: json['uid'],
        name: json['name'] ?? '${json['subvillage'] != null ? json['subvillage'] : json['village']}',
        created: json['createdDate'],
        code: json['code'],
        activity: json['activity'],
        organisationUnit: json['organisationUnit'],
        team: json['team'],
        warehouse: json['warehouse'],
        startDate: json['startDate'],
        status: json['status'],
        startPeriod: json['startPeriod'],
        period: json['period'],
        periodType: json['periodType'],
        gov: json['gov'],
        district: json['district'],
        subdistrict: json['subdistrict'],
        village: json['village'],
        subvillage: json['subvillage'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activity'] = this.activity;
    data['organisationUnit'] = this.organisationUnit;
    data['team'] = this.team;
    data['warehouse'] = this.warehouse;
    data['startDate'] = this.startDate;
    data['status'] = this.status;
    data['startPeriod'] = this.startPeriod;
    data['period'] = this.period;
    data['periodType'] = this.periodType;
    data['gov'] = this.gov;
    data['district'] = this.district;
    data['subdistrict'] = this.subdistrict;
    data['village'] = this.village;
    data['subvillage'] = this.subvillage;
    data['dirty'] = this.dirty;
    return data;
  }
}
