/// This file contains the query class for the data element entity.
/// The query class is used to perform CRUD operations on the data element entity.
///
import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/itns/entities/itns_village.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ItnsVillageQuery extends BaseQuery<ItnsVillage> {
  ItnsVillageQuery({Database? database}) : super(database: database);
}
