import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/metadatarun/warehouse/entities/warehouse.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class WarehouseQuery extends BaseQuery<Warehouse> {
  WarehouseQuery({Database? database}) : super(database: database);
  String? activity;

  WarehouseQuery activated() {
    this.where(attribute: 'activated', value: true);
    return this;
  }

  WarehouseQuery byActivity(String activity) {
    this.activity = activity;
    this.where(attribute: 'activity', value: activity);
    return this;
  }
}
