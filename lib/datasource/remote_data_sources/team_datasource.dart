import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(80)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class TeamDatasource extends BaseDataSource<$TeamsTable, Team>
    implements MetaDataSource<Team> {
  TeamDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.teams);

  @override
  String get apiResourceName => 'teams';

  @override
  Team fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer}) {
    final activity =
        data['activity']['uid'] ?? data['activity']['id']?.toString();
    return Team.fromJson({...data, 'activity': activity},
        serializer: serializer);
  }
}
