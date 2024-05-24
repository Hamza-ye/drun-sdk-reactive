import 'package:sqflite/sqflite.dart';
import '../../../../core/annotations/index.dart';
import '../../../../shared/queries/base.query.dart';
import '../entities/tracked_entity_type.entity.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class TrackedEntityTypeQuery extends BaseQuery<TrackedEntityType> {
  TrackedEntityTypeQuery({Database? database}) : super(database: database);
}
