/// This file contains the query class for the data element entity.
/// The query class is used to perform CRUD operations on the data element entity.
///
import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/data_run/itns/entities/progress_status.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ProgressStatusQuery extends BaseQuery<ProgressStatus> {
  ProgressStatusQuery({Database? database}) : super(database: database);
}
