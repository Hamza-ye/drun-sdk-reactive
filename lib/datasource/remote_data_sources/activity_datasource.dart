import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class ActivityDatasource extends GenericDataSource<$ActivitiesTable, Activity>
    implements MetaDataSource<Activity> {
  ActivityDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.getActiveDb()!.activities);

  @override
  String get apiResourceName => 'activities';

  @override
  FromJsonCallback<Activity> get fromJsonCallback => Activity.fromJson;
}
