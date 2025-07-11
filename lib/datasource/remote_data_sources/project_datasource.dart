import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.project)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class ProjectDatasource extends BaseDataSource<$ProjectsTable, Project>
    implements MetaDataSource<Project> {
  ProjectDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.projects);

  @override
  String get resourceName => 'projects';

  @override
  Project fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      Project.fromJson(data, serializer: serializer);
}
