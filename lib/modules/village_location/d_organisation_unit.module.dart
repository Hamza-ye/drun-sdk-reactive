import 'package:d2_remote/modules/village_location/queries/d_organisation_unit.query.dart';

class DOrganisationUnitModule {
  static createTables() async {
    await DOrganisationUnitQuery().createTable();
  }

  DOrganisationUnitQuery get villageLocation => DOrganisationUnitQuery();
}
