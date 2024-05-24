import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_organisation_unit.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user_organisation_unit.query.dart';
import 'package:d2_remote/modules/data_run/village_location/entities/d_organisation_unit.entity.dart';
import 'package:d2_remote/shared/models/request_progress.model.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:d2_remote/shared/utilities/query_filter.util.dart';
import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DOrganisationUnitQuery extends BaseQuery<DUserOrganisationUnit> {
  DOrganisationUnitQuery({Database? database}) : super(database: database);

  Future<List<DUserOrganisationUnit>>? getUserVillageLocations() async {
    final List<DUserOrganisationUnit> userOrgUnits =
        await DOrganisationUnitQuery().get();

    final userOrgUnitIds =
        userOrgUnits.map((orgUnit) => orgUnit.orgUnit).toList();

    return this.byIds(userOrgUnitIds).get();
  }

  @override
  Future<List<DUserOrganisationUnit>?> download(
      Function(RequestProgress, bool) callback,
      {Dio? dioTestClient}) async {
    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message: 'Fetching user assigned organisation units....',
            status: '',
            percentage: 0),
        false);

    final List<DUserOrganisationUnit> userOrgUnits =
        await DUserOrganisationUnitQuery().get();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${userOrgUnits.length} user assigned organisation units found!',
            status: '',
            percentage: 25),
        false);

    this.ilike(
        attribute: 'path',
        value: userOrgUnits.map((orgUnit) => orgUnit.orgUnit).toList());
    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                'Downloading ${this.apiResourceName?.toLowerCase()} from the server....',
            status: '',
            percentage: 26),
        false);

    final dhisUrl = await this.dhisUrl();

    final response = await HttpClient.get(dhisUrl,
        database: this.database, dioTestClient: dioTestClient);

    List data = response.body[this.apiResourceName]?.toList();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${data.length} ${this.apiResourceName?.toLowerCase()} downloaded successfully',
            status: '',
            percentage: 50),
        false);

    this.data = data.map((dataItem) {
      dataItem['dirty'] = false;
      return DOrganisationUnit.fromJson(dataItem);
    }).toList();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                'Saving ${data.length} ${this.apiResourceName?.toLowerCase()} into phone database...',
            status: '',
            percentage: 51),
        false);

    await this.save();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${data.length} ${this.apiResourceName?.toLowerCase()} successfully saved into the database',
            status: '',
            percentage: 100),
        true);

    return this.data;
  }

  @override
  Future<String> dhisUrl() {
    final apiFilter =
        QueryFilter.getApiFilters(this.repository.columns, this.filters);
    return Future.value(
        'organisationUnits.json${apiFilter != null ? '?$apiFilter&' : '?'}fields=id,dirty,lastUpdated,created,name,displayName,shortName,code,level,path,externalAccess,openingDate,geometry,parent,ancestors[id,name,displayName,level,path,openingDate],closedDate,programs&userOnly=true&paging=false');
  }
}
