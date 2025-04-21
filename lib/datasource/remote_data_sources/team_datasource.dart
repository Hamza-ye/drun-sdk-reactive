import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(80)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class TeamDatasource extends BaseDataSource<$TeamsTable, Team>
    implements MetaDataSource<Team> {
  TeamDatasource(
      {required super.dioClient,
      required DbManager dbManager,
      @Named('apiPath') required super.apiPath})
      : super(dbManager: dbManager, table: dbManager.db.teams);

  @override
  String get apiResourceName => 'teams';

  @override
  Team fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer}) {
    final activity =
        data['activity']['uid']!;
    return Team.fromJson({...data, 'activity': activity},
        serializer: serializer);
  }
}
