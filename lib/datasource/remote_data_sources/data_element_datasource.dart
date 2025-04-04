import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class DataElementDatasource
    extends GenericDataSource<$DataElementsTable, DataElement>
    implements MetaDataSource<DataElement> {
  DataElementDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.getActiveDb()!.dataElements);

  @override
  String get apiResourceName => 'dataElements';

  @override
  FromJsonCallback<DataElement> get fromJsonCallback => DataElement.fromJson;
}
