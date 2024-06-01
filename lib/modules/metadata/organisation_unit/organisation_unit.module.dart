import 'package:d2_remote/modules/metadata/organisation_unit/queries/organisation_unit.query.dart';
import 'package:d2_remote/modules/metadata/organisation_unit/queries/organisation_unit_level.query.dart';

class OrganisationUnitModule {
  static createTables() async {
    await OrganisationUnitQuery().createTable();
    await OrganisationUnitLevelQuery().createTable();
  }

  OrganisationUnitQuery get organisationUnit => OrganisationUnitQuery();

  OrganisationUnitLevelQuery get organisationUnitLevel =>
      OrganisationUnitLevelQuery();
}
