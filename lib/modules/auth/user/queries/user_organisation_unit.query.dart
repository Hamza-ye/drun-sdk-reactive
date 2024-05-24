import 'package:d2_remote/modules/auth/user/entities/user_organisation_unit.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class UserOrganisationUnitQuery extends BaseQuery<UserOrganisationUnit> {
  UserOrganisationUnitQuery({Database? database}) : super(database: database);
}
