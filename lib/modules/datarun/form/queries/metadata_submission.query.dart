import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/form/entities/meta_data_submission.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class MetadataSubmissionQuery extends BaseQuery<MetadataSubmission> {
  MetadataSubmissionQuery({Database? database}) : super(database: database);
}
