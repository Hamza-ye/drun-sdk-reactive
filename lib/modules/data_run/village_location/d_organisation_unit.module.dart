import 'package:d2_remote/modules/auth/user/queries/user_organisation_unit.query.dart';
import 'package:d2_remote/modules/data_run/village_location/queries/d_organisation_unit.query.dart';

class VillageLocationModule {
  static createTables() async {
    await UserOrganisationUnitQuery().createTable();
    await DOrganisationUnitQuery().createTable();
  }

  UserOrganisationUnitQuery get userOrganisationUnit =>
      UserOrganisationUnitQuery();

  DOrganisationUnitQuery get villageLocation => DOrganisationUnitQuery();
}
