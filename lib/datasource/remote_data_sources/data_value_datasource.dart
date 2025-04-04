import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class DataValueDatasource extends GenericDataSource<$DataValuesTable, DataValue>
    implements MetaDataSource<DataValue> {
  DataValueDatasource({required super.apiClient, required DbManager dbManager})
      : super(table: dbManager.getActiveDb()!.dataValues, dbManager: dbManager);

  @override
  String get apiResourceName => 'dataValues';

  @override
  FromJsonCallback<DataValue> get fromJsonCallback => DataValue.fromJson;
}
