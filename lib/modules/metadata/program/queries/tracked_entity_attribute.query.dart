import 'package:d2_remote/modules/metadata/program/entities/tracked_entity_attribute.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../../../core/annotations/index.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class TrackedEntityAttributeQuery extends BaseQuery<TrackedEntityAttribute> {
  TrackedEntityAttributeQuery({Database? database}) : super(database: database);
}
