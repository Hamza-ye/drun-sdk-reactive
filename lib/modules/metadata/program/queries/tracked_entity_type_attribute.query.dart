import 'package:d2_remote/modules/metadata/program/entities/tracked_entity_type_attribute.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

// @AnnotationReflectable
// @Query(type: QueryType.METADATA)
class TrackedEntityTypeAttributeQuery
    extends BaseQuery<TrackedEntityTypeAttribute> {
  TrackedEntityTypeAttributeQuery({Database? database})
      : super(database: database);
  String? trackedEntityType;

  TrackedEntityTypeAttributeQuery byTrackedEntityType(
      String trackedEntityType) {
    this.trackedEntityType = trackedEntityType;
    return where(attribute: 'trackedEntityType', value: trackedEntityType);
  }
}
