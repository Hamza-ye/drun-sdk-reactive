import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class TeamDatasource extends GenericDataSource<$TeamsTable, Team>
    implements MetaDataSource<Team> {
  TeamDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.getActiveDb()!.teams);

  @override
  String get apiResourceName => 'teams';

  @override
  FromJsonCallback<Team> get fromJsonCallback => Team.fromJson;
}
