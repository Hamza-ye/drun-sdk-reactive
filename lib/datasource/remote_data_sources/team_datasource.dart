import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';
import 'package:d_sdk/database/converters/converters.dart';
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
  Future<List<Team>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final resourcePath = '$resourceName$pathPostfix';
    final response =
    await apiClient.request(resourceName: resourcePath, method: 'get');

    final raw = response.data;

    /// expecting paged list ({ apiResourceName: [...] }),
    List dataItems = raw?[resourceName]?.toList() ?? [];

    List<ManagedTeam> managedTeams = [];
    for (final item in dataItems) {
      final managedTeamsJsonList = item['managedTeams'] as List?;
      if (!managedTeams.isNullOrEmpty) {
        managedTeams.addAll(managedTeamsJsonList!
            .map<ManagedTeam>((t) => ManagedTeam.fromJson({
          ...t,
          'managedBy': item['uid'],
          'activity': item['activity']['uid']
        }))
            .toList());
      }
    }

    final teams = dataItems.map((item) {
      return fromApiJson({
        ...item,
        'id': item['uid']!,
        'translations': (item['translations'] as List?) ?? [],
      }, serializer: CustomSerializer());
    }).toList();

    progressCallback?.call(60);

    if (teams.isNotEmpty) {
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, teams);
        });
        if (managedTeams.isNotEmpty) {
          await db.batch((b) {
            b.insertAllOnConflictUpdate(db.managedTeams, managedTeams);
          });
        }
      });
    }
    progressCallback?.call(100);
    return teams;
  }

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
