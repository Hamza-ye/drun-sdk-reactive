import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(10)
@LazySingleton(as: AbstractDatasource, scope: 'authenticated')
class ProjectDatasource extends BaseDataSource<$ProjectsTable, Project>
    implements MetaDataSource<Project> {
  ProjectDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.projects);

  @override
  String get apiResourceName => 'projects';

  @override
  Project fromApiJson(Map<String, dynamic> data) => Project.fromJson(data);
}
