import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/chv_session.entity.dart';
import 'package:d2_remote/modules/datarun/shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class ChvSessionQuery extends SyncableQuery<ChvSession> {
  ChvSessionQuery({Database? database}) : super(database: database);
}
