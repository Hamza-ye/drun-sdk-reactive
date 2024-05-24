import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/auth/user/queries/user_authority.query.dart';
import 'package:d2_remote/modules/auth/user/queries/user_organisation_unit.query.dart';
import 'package:d2_remote/modules/auth/user/queries/user_role.query.dart';
import 'package:d2_remote/modules/auth/user/queries/user_team.query.dart';

class UserModule {
  static createTables() async {
    await UserQuery().createTable();
    await UserOrganisationUnitQuery().createTable();
    await UserTeamQuery().createTable();
    await UserAuthorityQuery().createTable();
    await UserRoleQuery().createTable();
  }

  static logOut() async {}

  UserQuery user = UserQuery();

  UserOrganisationUnitQuery userOrganisationUnit = UserOrganisationUnitQuery();

  UserTeamQuery userTeam = UserTeamQuery();

  UserAuthorityQuery userAuthority = UserAuthorityQuery();

  UserRoleQuery userRole = UserRoleQuery();
}
