import 'package:d2_remote/modules/data_run/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user_authority.query.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user_organisation_unit.query.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user_team.query.dart';

class DUserModule {
  static createTables() async {
    await DUserQuery().createTable();
    await DUserOrganisationUnitQuery().createTable();
    await DUserTeamQuery().createTable();
    await DUserAuthorityQuery().createTable();
  }

  static logOut() async {}

  DUserQuery user = DUserQuery();

  DUserOrganisationUnitQuery userOrganisationUnit =
      DUserOrganisationUnitQuery();

  DUserTeamQuery userTeam = DUserTeamQuery();

  DUserAuthorityQuery userAuthority = DUserAuthorityQuery();
}
