import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class RepeatInstanceDatasource
    extends GenericDataSource<$RepeatInstancesTable, RepeatInstance>
    implements MetaDataSource<RepeatInstance> {
  RepeatInstanceDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.repeatInstances);

  @override
  String get apiResourceName => 'repeatInstances';

  @override
  FromJsonCallback<RepeatInstance> get fromJsonCallback =>
      RepeatInstance.fromJson;
}
