import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(140)
@LazySingleton(as: AbstractDatasource, scope: 'auth')
class DataValueDatasource extends BaseDataSource<$DataValuesTable, DataValue>
    implements MetaDataSource<DataValue> {
  DataValueDatasource({required super.apiClient, required DbManager dbManager})
      : super(table: dbManager.getActiveDb()!.dataValues, dbManager: dbManager);

  @override
  String get apiResourceName => 'dataValues';

  @override
  DataValue fromApiJson(Map<String, dynamic> data) => DataValue.fromJson(data);
}
