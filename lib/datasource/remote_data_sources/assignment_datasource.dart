import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(110)
@LazySingleton(
    as: AbstractDatasource<Insertable<dynamic>>, scope: 'authenticated')
class AssignmentDatasource extends BaseDataSource<$AssignmentsTable, Assignment>
    implements MetaDataSource<Assignment> {
  AssignmentDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.assignments);

  @override
  String get apiResourceName => 'assignments';

  @override
  Assignment fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final activity =
        data['activity']['uid'] ?? data['activity']['id']?.toString();
    final orgUnit = data['orgUnit']['uid'] ?? data['orgUnit']['id']?.toString();
    final team = data['team']['uid'] ?? data['team']['id']?.toString();
    final parent = data['parent']['uid'] ?? data['parent']['id']?.toString();
    return Assignment.fromJson({
      ...data,
      'activity': activity,
      'orgUnit': orgUnit,
      'team': team,
      'parent': parent
    }, serializer: serializer);
  }
}
