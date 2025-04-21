import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(110)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class AssignmentDatasource extends BaseDataSource<$AssignmentsTable, Assignment>
    implements MetaDataSource<Assignment> {
  AssignmentDatasource(
      {required super.dioClient,
      required DbManager dbManager,
      @Named('apiPath') required super.apiPath})
      : super(dbManager: dbManager, table: dbManager.db.assignments);

  @override
  String get apiResourceName => 'assignments';

  @override
  Future<List<Assignment>> getOnline() async {
    final items = await super.getOnline();
    return items..sort((a, b) => (a.level).compareTo(b.level));
  }

  @override
  Assignment fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final activity =
        data['activity']['uid'];
    final orgUnit = data['orgUnit']['uid'];
    final team = data['team']['uid'];
    final parent = data['parent']?['uid'];
    return Assignment.fromJson({
      ...data,
      'activity': activity,
      'orgUnit': orgUnit,
      'team': team,
      'level': data['level'] ?? 1,
      'parent': parent
    }, serializer: serializer);
  }
}
