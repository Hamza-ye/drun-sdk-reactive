import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.team)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class TeamDatasource extends BaseDataSource<$TeamsTable, Team>
    implements MetaDataSource<Team> {
  TeamDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.teams);

  @override
  String get resourceName => 'teams';

  @override
  Team fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer}) {
    final activity = data['activity']['uid'];
    final disabled =
        data['activity']['disabled'] == true || data['disabled'] == true;
    final currentUser = rSdkLocator<User>().id;
    return Team.fromJson({
      ...data,
      'activity': activity,
      'disabled': disabled,
      'user': currentUser,
    }, serializer: serializer);
  }
}
