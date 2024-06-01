import 'package:d2_remote/modules/metadata/organisation_unit/entities/organisation_unit_level.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/annotations/index.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA, aut: false)
class OrganisationUnitLevelQuery extends BaseQuery<OrganisationUnitLevel> {
  OrganisationUnitLevelQuery({Database? database}) : super(database: database);
}
