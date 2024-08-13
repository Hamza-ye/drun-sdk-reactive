import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/active_status.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DActivityQuery extends BaseQuery<DActivity> {
  DActivityQuery({Database? database}) : super(database: database);
  String? project;
  ActiveStatus? activeStatus;

  DActivityQuery byProject(String project) {
    this.project = project;
    this.where(attribute: 'project', value: project);
    return this;
  }

  DActivityQuery byActivityStatus(ActiveStatus activeStatus) {
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
