// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/modules/activity_management/assignment/entities/assignment.entity.dart';
// import 'package:d2_remote/shared/queries/base.query.dart';
// import 'package:sqflite/sqflite.dart';
//
// @AnnotationReflectable
// // @Query(type: QueryType.METADATA, aut: false)
// class AssignmentQuery extends BaseQuery<Assignment> {
//   String? team;
//   String? activity;
//   String? organisationUnit;
//
//   AssignmentQuery({Database? database}) : super(database: database);
//
//   AssignmentQuery byTeam(String team) {
//     this.team = team;
//     return this.where(attribute: 'team', value: team);
//   }
//
//   AssignmentQuery byActivity(String activity) {
//     this.activity = activity;
//     return this.where(attribute: 'activity', value: activity);
//   }
//
//   AssignmentQuery byOrgUnit(String organisationUnit) {
//     this.organisationUnit = organisationUnit;
//     return this.where(attribute: 'organisationUnit', value: organisationUnit);
//   }
// }
