import 'package:d2_remote/modules/activity_management/project/entities/project.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/annotations/index.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ProjectQuery extends BaseQuery<Project> {
  ProjectQuery({Database? database}) : super(database: database);

  // @override
  // Future<String> dhisUrl() {
  //   final apiFilter =
  //   QueryFilter.getApiFilters(this.repository.columns, this.filters);
  //   return Future.value(
  //       'projects.json${apiFilter != null ? '?$apiFilter&' : '?'}fields=id,name,displayName,shortName,lastUpdated,created,code,dirty,description,activities[id,name,displayName,created,lastUpdated,programs,startDate,endDate,inactive,organisationUnits,assignments[id,name,displayName,created,lastUpdated,activity,team,organisationUnit,startDate,status,targetSource,startPeriod,period,periodType]]&paging=false');
  // }
}
