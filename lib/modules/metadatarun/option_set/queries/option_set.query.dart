import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/option_set/entities/option_set.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class OptionSetQuery extends BaseQuery<OptionSet> {
  OptionSetQuery({Database? database}) : super(database: database);
}
