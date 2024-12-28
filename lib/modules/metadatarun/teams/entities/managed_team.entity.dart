// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
// import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'managedTeam', apiResourceName: 'managedTeams')
// class ManagedTeam extends IdentifiableEntity {
//   @Column()
//   final String managedTeam;
//
//   @ManyToOne(joinColumnName: 'team', table: DTeam)
//   dynamic team;
//
//   ManagedTeam(
//       {required String id,
//       String? code,
//       required String name,
//       required this.managedTeam,
//       required this.team,
//       required bool dirty})
//       : super(id: id, name: name, code: code, dirty: dirty);
//
//   factory ManagedTeam.fromJson(Map<String, dynamic> json) {
//     return ManagedTeam(
//         id: json['id'],
//         name: json['name'],
//         code: json['code'],
//         managedTeam: json['managedTeam'],
//         team: json['team'],
//         dirty: json['dirty']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['code'] = this.code;
//     data['managedTeam'] = this.managedTeam;
//     data['team'] = this.team;
//     data['dirty'] = this.dirty;
//     return data;
//   }
// }
