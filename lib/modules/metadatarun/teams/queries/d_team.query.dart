import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/active_status.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DTeamQuery extends BaseQuery<DTeam> {
  DTeamQuery({Database? database}) : super(database: database);
  String? activity;
  ActiveStatus? activeStatus;

  DTeamQuery byActivity(String activity) {
    this.where(attribute: 'activity', value: activity);
    this.activity = activity;
    return this;
  }

  DTeamQuery byActivityStatus(ActiveStatus activeStatus) {
    this.activeStatus = activeStatus;
    switch (activeStatus) {
      case ActiveStatus.EnabledOnly:
        this.where(attribute: 'disabled', value: false);
        return this;
      case ActiveStatus.DisabledOnly:
        this.where(attribute: 'disabled', value: true);
        return this;
      default:
        return this;
    }
  }
}
