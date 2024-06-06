import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DActivityQuery extends BaseQuery<DActivity> {
  DActivityQuery({Database? database}) : super(database: database);
  String? project;

  DActivityQuery byProject(String project) {
    this.project = project;
    this.where(attribute: 'project', value: project);
    return this;
  }

  DActivityQuery activated() {
    this.where(attribute: 'activated', value: true);
    return this;
  }
}
