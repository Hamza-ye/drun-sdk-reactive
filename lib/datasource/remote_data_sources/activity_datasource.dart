import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.activity)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class ActivityDatasource extends BaseDataSource<$ActivitiesTable, Activity>
    implements MetaDataSource<Activity> {
  ActivityDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.activities);

  @override
  String get resourceName => 'activities';

  @override
  Future<void> disableStale(List<Object> liveIds) async {
    await (db.update(table)
      ..where((t) => t.columnsByName['id']!.isNotIn(liveIds)))
        .write(RawValuesInsertable({
      'disabled': Variable<bool>(true),
    }));
  }

  @override
  Activity fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final project =
        data['project']?['uid'] ?? data['project']?['id']?.toString();
    return Activity.fromJson({...data, 'project': project as String},
        serializer: serializer);
  }
}
