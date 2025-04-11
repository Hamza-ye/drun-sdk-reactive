import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(20)
@LazySingleton(
    as: AbstractDatasource<Insertable<dynamic>>, scope: 'authenticated')
class ActivityDatasource extends BaseDataSource<$ActivitiesTable, Activity>
    implements MetaDataSource<Activity> {
  ActivityDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.activities);

  @override
  String get apiResourceName => 'activities';

  @override
  Activity fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      Activity.fromJson(data, serializer: serializer);
}
