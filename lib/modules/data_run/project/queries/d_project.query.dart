import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data_run/project/entities/d_project.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DProjectQuery extends BaseQuery<DProject> {
  DProjectQuery({Database? database}) : super(database: database);
}
