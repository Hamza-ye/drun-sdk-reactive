import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/assignment/entities/d_assignment.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA, aut: false)
class DAssignmentQuery extends BaseQuery<DAssignment> {
  String? team;
  String? activity;
  String? organisationUnit;

  DAssignmentQuery({Database? database}) : super(database: database);

  DAssignmentQuery byTeam(String team) {
    this.team = team;
    return this.where(attribute: 'team', value: team);
  }

  DAssignmentQuery byActivity(String activity) {
    this.activity = activity;
    return this.where(attribute: 'activity', value: activity);
  }

  DAssignmentQuery byOrgUnit(String organisationUnit) {
    this.organisationUnit = organisationUnit;
    return this.where(attribute: 'organisationUnit', value: organisationUnit);
  }
}
