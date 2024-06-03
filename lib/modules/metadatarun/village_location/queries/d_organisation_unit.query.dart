import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/metadatarun/village_location/entities/d_organisation_unit.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DOrganisationUnitQuery extends BaseQuery<DOrganisationUnit> {
  DOrganisationUnitQuery({Database? database}) : super(database: database);
}
