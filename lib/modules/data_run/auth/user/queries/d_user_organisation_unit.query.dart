import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_organisation_unit.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class DUserOrganisationUnitQuery extends BaseQuery<DUserOrganisationUnit> {
  DUserOrganisationUnitQuery({Database? database}) : super(database: database);
}
