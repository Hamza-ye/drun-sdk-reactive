import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dAssignment', apiResourceName: 'assignments')
class DAssignment extends IdentifiableEntity {
  // @ManyToOne(table: DActivity, joinColumnName: 'activity')
  // dynamic activity;
  @Column(nullable: true)
  String? activity;

  // @ManyToOne(table: DTeam, joinColumnName: 'team')
  // dynamic team;
  @Column(nullable: true)
  String? team;

  // @ManyToOne(table: DOrganisationUnit, joinColumnName: 'organisationUnit')
  // dynamic organisationUnit;
  @Column(nullable: true)
  String? orgUnit;

  // @ManyToOne(table: Warehouse, joinColumnName: 'warehouse')
  // dynamic warehouse;
  @Column(nullable: true)
  String? warehouse;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? status;

  @Column(nullable: true, type: ColumnType.TEXT)
  Map<String, String>? properties;

  DAssignment(
      {String? id,
      required String uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? code,
      this.properties,
      this.warehouse,
      this.activity,
      this.orgUnit,
      this.team,
      this.status,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory DAssignment.fromJson(Map<String, dynamic> json) {
    // final team = json['team'] is int ? json['team'] : json['team']['id'];
    // final activity = json['activity'] is int ? json['activity'] : json['activity']['id'];
    // // final organisationUnit = json['organisationUnit'] is int ? json['organisationUnit'] : json['organisationUnit']['id'];
    // final warehouse = json['warehouse'] is int ? json['warehouse'] : json['warehouse']['id'];

    return DAssignment(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'] ??
            '${json['subvillage'] != null ? json['subvillage'] : json['village']}',
        properties: json['properties'] != null
            ? Map<String, String>.from(json['properties'] is String
                ? jsonDecode(json['properties'])
                : json['properties'])
            : null,
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        code: json['code'],
        activity: json['activity'] != null
            ? json['activity'] is String
                ? json['activity']
                : json['activity']['uid']
            : null,
        orgUnit: json['orgUnit'] != null
            ? json['orgUnit'] is String
                ? json['orgUnit']
                : json['orgUnit']['uid']
            : null,
        warehouse: json['warehouse'] != null
            ? json['warehouse'] is String
                ? json['warehouse']
                : json['warehouse']['uid']
            : null,
        team: json['team'] != null
            ? json['team'] is String
                ? json['team']
                : json['team']['uid']
            : null,

        //warehouse,
        status: json['status'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activity'] = this.activity;
    data['orgUnit'] = this.orgUnit;
    data['team'] = this.team;
    data['status'] = this.status;
    data['properties'] = this.properties;
    data['warehouse'] = this.warehouse;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['dirty'] = this.dirty;
    return data;
  }
}
