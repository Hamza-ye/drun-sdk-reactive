import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(80)
@LazySingleton(as: AbstractDatasource, scope: 'authenticated')
class TeamDatasource extends BaseDataSource<$TeamsTable, Team>
    implements MetaDataSource<Team> {
  TeamDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.teams);

  @override
  String get apiResourceName => 'teams';

  @override
  Team fromApiJson(Map<String, dynamic> data) => Team.fromJson(data);
}
