import 'package:d2_remote/modules/data/tracker/entities/tracked_entity_attribute_value.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class TrackedEntityAttributeValueQuery
    extends BaseQuery<TrackedEntityAttributeValue> {
  TrackedEntityAttributeValueQuery({Database? database})
      : super(database: database);
  String? attribute;
  String? trackedEntityInstance;

  TrackedEntityAttributeValueQuery byAttribute(String attribute) {
    this.attribute = attribute;
    return this.where(attribute: 'attribute', value: attribute);
  }

  TrackedEntityAttributeValueQuery byTrackedEntityInstance(
      String trackedEntityInstance) {
    this.trackedEntityInstance = trackedEntityInstance;
    return this.where(
        attribute: 'trackedEntityInstance', value: trackedEntityInstance);
  }
}
