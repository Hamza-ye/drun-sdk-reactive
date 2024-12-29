// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
// import 'package:d2_remote/modules/activity_management/team/entities/team_group.entity.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'team', apiResourceName: 'old-teams')
// class Team extends IdentifiableEntity {
//   @ManyToOne(table: Activity, joinColumnName: 'activity')
//   dynamic activity;
//
//   @ManyToOne(table: TeamGroup, joinColumnName: 'teamGroup')
//   dynamic teamGroup;
//
//   @Column(type: ColumnType.BOOLEAN)
//   bool inactive;
//
//   @Column(nullable: true)
//   bool? synced;
//
//   @Column(nullable: true)
//   final String? mobile;
//
//   Team(
//       {required String id,
//       String? uid,
//       String? createdDate,
//       String? lastModifiedDate,
//       required String name,
//       String? shortName,
//       String? code,
//       String? displayName,
//       this.mobile,
//       this.activity,
//       this.teamGroup,
//       required this.inactive,
//       this.synced,
//       required dirty})
//       : super(
//             id: id,
//             uid: uid,
//             name: name,
//             shortName: shortName,
//             displayName: displayName,
//             code: code,
//             createdDate: createdDate,
//             lastModifiedDate: lastModifiedDate,
//             dirty: dirty);
//
//   factory Team.fromJson(Map<String, dynamic> json) {
//     return Team(
//         id: json['id'],
//         uid: json['uid'],
//         name: json['name'],
//         createdDate: json['createdDate'],
//         shortName: json['shortName'],
//         code: json['code'],
//         displayName: json['displayName'],
//         teamGroup: json['teamGroup'],
//         activity: json['activity'],
//         mobile: json['mobile'],
//         inactive: json['inactive'] ?? false,
//         synced: json['synced'],
//         dirty: json['dirty']);
//   }
//
//   factory Team.fromApi(Map<String, dynamic> jsonData) {
//     return Team(
//         id: jsonData['id'].toString(),
//         uid: jsonData['uid'],
//         name: jsonData['name'],
//         createdDate: jsonData['createdDate'],
//         shortName: jsonData['shortName'],
//         code: jsonData['code'],
//         displayName: jsonData['displayName'],
//         teamGroup: jsonData['teamGroup'],
//         activity: jsonData['activity'] is String
//             ? jsonData['activity']
//             : jsonData['activity']['uid'],
//         inactive: jsonData['inactive'] ?? false,
//         mobile: jsonData['mobile'],
//         dirty: jsonData['dirty'] ?? false);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lastModifiedDate'] = this.lastModifiedDate;
//     data['id'] = this.id;
//     data['uid'] = this.uid;
//     data['createdDate'] = this.createdDate;
//     data['name'] = this.name;
//     data['shortName'] = this.shortName;
//     data['code'] = this.code;
//     data['displayName'] = this.displayName;
//     data['teamGroup'] = this.teamGroup;
//     data['activity'] = this.activity;
//     data['inactive'] = this.inactive;
//     data['mobile'] = this.mobile;
//     data['synced'] = this.synced;
//     data['dirty'] = this.dirty;
//     return data;
//   }
// }
