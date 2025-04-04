import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class OptionDatasource extends GenericDataSource<$DataOptionsTable, DataOption>
    implements MetaDataSource<DataOption> {
  OptionDatasource({required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.getActiveDb()!.dataOptions);

  @override
  String get apiResourceName => 'options';

  @override
  FromJsonCallback<DataOption> get fromJsonCallback => DataOption.fromJson;
}
