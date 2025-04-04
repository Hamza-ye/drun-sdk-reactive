import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class AssignmentDatasource extends GenericDataSource<$AssignmentsTable, Assignment>
    implements MetaDataSource<Assignment> {
  AssignmentDatasource({required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.getActiveDb()!.assignments);

  @override
  String get apiResourceName => 'assignments';

  @override
  FromJsonCallback<Assignment> get fromJsonCallback => Assignment.fromJson;
}
