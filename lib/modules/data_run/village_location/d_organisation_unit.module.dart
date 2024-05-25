import 'package:d2_remote/modules/data_run/auth/user/queries/d_user_organisation_unit.query.dart';
import 'package:d2_remote/modules/data_run/village_location/queries/d_organisation_unit.query.dart';

class DOrganisationUnitModule {
  static createTables() async {
    await DUserOrganisationUnitQuery().createTable();
    await DOrganisationUnitQuery().createTable();
  }

  DUserOrganisationUnitQuery get userOrganisationUnit =>
      DUserOrganisationUnitQuery();

  DOrganisationUnitQuery get villageLocation => DOrganisationUnitQuery();
}
