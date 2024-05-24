import 'package:d2_remote/modules/auth/user/queries/user_organisation_unit.query.dart';
import 'package:d2_remote/modules/data_run/village_location/queries/village_location.query.dart';

class VillageLocationModule {
  static createTables() async {
    await UserOrganisationUnitQuery().createTable();
    await VillageLocationQuery().createTable();
  }

  UserOrganisationUnitQuery get userOrganisationUnit =>
      UserOrganisationUnitQuery();

  VillageLocationQuery get villageLocation => VillageLocationQuery();
}
