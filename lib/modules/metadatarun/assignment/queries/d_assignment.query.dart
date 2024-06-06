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
  String? organisationUnit;

  DAssignmentQuery({Database? database}) : super(database: database);

  DAssignmentQuery activated() {
    this.where(attribute: 'activated', value: true);
    return this;
  }

  DAssignmentQuery byActivity(String activity) {
    this.activity = activity;
    this.where(attribute: 'activity', value: activity);
    return this;
  }

  DAssignmentQuery byWarehouse(String warehouse) {
    this.warehouse = warehouse;
    this.where(attribute: 'warehouse', value: warehouse);
    return this;
  }

  DAssignmentQuery byTeam(String team) {
    this.team = team;
    this.where(attribute: 'team', value: team);
    return this;
  }

  DAssignmentQuery byOrgUnit(String organisationUnit) {
    this.organisationUnit = organisationUnit;
    this.where(attribute: 'organisationUnit', value: organisationUnit);
    return this;
  }
}
