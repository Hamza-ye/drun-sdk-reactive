import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.managedTeam)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class ManagedTeamDatasource
    extends BaseDataSource<$ManagedTeamsTable, ManagedTeam>
    implements MetaDataSource<ManagedTeam> {
  ManagedTeamDatasource({required super.dioClient,
    required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.managedTeams);

  @override
  String get resourceName => 'teams/managed';

  @override
  ManagedTeam fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final activity = data['activity']['uid'];
    final disabled = data['activity']['disabled'] == true ||
        data['disabled'] == true;
    return ManagedTeam.fromJson({
      ...data,
      'activity': activity,
      'disabled': disabled,
    }, serializer: serializer);
  }
}
