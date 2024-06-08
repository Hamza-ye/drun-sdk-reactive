import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/itns/entities/itns_village.entity.dart';
import 'package:d2_remote/modules/datarun/shared/utilities/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ItnsVillageQuery extends SyncableQuery<ItnsVillage> {
  ItnsVillageQuery({Database? database}) : super(database: database);
}
