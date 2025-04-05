import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(30)
@LazySingleton(as: AbstractDatasource)
class OrgUnitDatasource extends BaseDataSource<$OrgUnitsTable, OrgUnit>
    implements MetaDataSource<OrgUnit> {
  OrgUnitDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.getActiveDb()!.orgUnits);

  @override
  String get apiResourceName => 'orgUnits';

  @override
  OrgUnit fromApiJson(Map<String, dynamic> data) => OrgUnit.fromJson(data);
}
