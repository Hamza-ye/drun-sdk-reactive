import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/assignment/entities/d_assignment.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DAssignmentQuery extends BaseQuery<DAssignment> {
  String? activity;
  String? warehouse;
  String? team;
  String? orgUnit;

  DAssignmentQuery({Database? database}) : super(database: database);

  DAssignmentQuery byActivity(String activity) {
    this.activity = activity;
    this.where(attribute: 'activity', value: activity);
    return this;
  }

  DAssignmentQuery byTeam(String team) {
    this.team = team;
    this.where(attribute: 'team', value: team);
    return this;
  }

  DAssignmentQuery byOrgUnit(String orgUnit) {
    this.orgUnit = orgUnit;
    this.where(attribute: 'orgUnit', value: orgUnit);
    return this;
  }

  DAssignmentQuery assigned() {
    this.where(attribute: 'scope', value: 'Assigned');
    return this;
  }

  DAssignmentQuery managed() {
    this.where(attribute: 'scope', value: 'Managed');
    return this;
  }
}
