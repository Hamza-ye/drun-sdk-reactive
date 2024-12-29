// import 'dart:convert';
//
// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
// import 'package:d2_remote/modules/activity_management/team/entities/team.entity.dart';
// import 'package:d2_remote/modules/metadata/organisation_unit/entities/organisation_unit.entity.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'assignment', apiResourceName: 'old-assignments')
// class Assignment extends IdentifiableEntity {
//   @ManyToOne(table: Activity, joinColumnName: 'activity')
//   dynamic activity;
//
//   @ManyToOne(table: Team, joinColumnName: 'team')
//   dynamic team;
//
//   @ManyToOne(table: OrganisationUnit, joinColumnName: 'organisationUnit')
//   dynamic organisationUnit;
//
//   @Column(nullable: true)
//   String? startDate;
//
//   @Column(type: ColumnType.TEXT)
//   String? status;
//
//   @Column(type: ColumnType.TEXT, nullable: true)
//   String? targetSource;
//
//   @Column(type: ColumnType.TEXT, nullable: true)
//   String? startPeriod;
//
//   @Column(type: ColumnType.TEXT, nullable: true)
//   String? period;
//
//   @Column(type: ColumnType.TEXT, nullable: true)
//   String? periodType;
//
//   @Column(type: ColumnType.TEXT, nullable: true)
//   String? warehouse;
//
//   Assignment(
//       {required String id,
//       String? uid,
//       String? createdDate,
//       String? lastModifiedDate,
//       String? name,
//       String? code,
//       this.warehouse,
//       this.activity,
//       this.organisationUnit,
//       this.team,
//       this.startDate,
//       this.status,
//       this.startPeriod,
//       this.period,
//       this.periodType,
//       required dirty})
//       : super(
//             id: id,
//             uid: uid,
//             name: name,
//             code: code,
//             createdDate: createdDate,
//             lastModifiedDate: lastModifiedDate,
//             dirty: dirty);
//
//   factory Assignment.fromJson(Map<String, dynamic> json) {
//     final team = json['team'] is String ? json['team'] : json['team']['id'];
//     return Assignment(
//         id: json['id'],
//         uid: json['uid'],
//         name: json['name'],
//         code: json['code'],
//         activity: json['activity']['uid'],
//         organisationUnit: json['organisationUnit']['id'],
//         team: team,
//         warehouse: json['warehouse']['uid'],
//         startDate: json['startDate'],
//         status: json['status'],
//         startPeriod: json['startPeriod'],
//         period: json['period'],
//         periodType: json['periodType'],
//         createdDate: json['createdDate'],
//         lastModifiedDate: json['lastModifiedDate'],
//         dirty: json['dirty']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['uid'] = this.uid;
//     data['name'] = this.name;
//     data['shortName'] = this.shortName;
//     data['code'] = this.code;
//     data['displayName'] = this.displayName;
//     data['activity'] = this.activity;
//     data['organisationUnit'] = this.organisationUnit;
//     data['team'] = this.team;
//     data['warehouse'] = jsonEncode({'id': this.warehouse});
//     data['startDate'] = this.startDate;
//     data['status'] = this.status;
//     data['startPeriod'] = this.startPeriod;
//     data['period'] = this.period;
//     data['periodType'] = this.periodType;
//     data['createdDate'] = this.createdDate;
//     data['lastModifiedDate'] = this.lastModifiedDate;
//     data['dirty'] = this.dirty;
//     return data;
//   }
// }
