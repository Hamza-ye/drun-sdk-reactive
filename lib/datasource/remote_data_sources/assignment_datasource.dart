import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.assignment)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class AssignmentDatasource extends BaseDataSource<$AssignmentsTable, Assignment>
    implements MetaDataSource<Assignment> {
  AssignmentDatasource(
      {required super.apiClient,
      required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.assignments);

  @override
  String get resourceName => 'assignments';

  // @override
  // Future<List<Assignment>> getOnline() async {
  //   final items = await super.getOnline();
  //   return items..sort((a, b) => (a.level).compareTo(b.level));
  // }

  @override
  Assignment fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final forms = (data['forms'] as List<dynamic>)
        .map<String>((e) => e as String)
        .toList();

    final activity = data['activity']['uid'];
    final orgUnit = data['orgUnit']['uid'];
    final team = data['team']['uid'];
    final parent = data['parent']?['uid'];
    final scope = data['scope'] ?? 'Assigned';

    final orgUnitCode = data['orgUnit']['code'];
    final orgUnitName = data['orgUnit']['displayName'];
    final teamCode = data['team']['code'];
    final activityName = data['activity']['displayName'];

    return Assignment.fromJson({
      ...data,
      'activity': activity,
      'orgUnit': orgUnit,
      'orgUnitCode': orgUnitCode,
      'orgUnitName': orgUnitName,
      'teamCode': teamCode,
      'activityName': activityName,
      'team': team,
      'scope': scope,
      'level': data['level'] ?? 1,
      'parent': parent,
      'forms': forms
    }, serializer: serializer);
  }
}
