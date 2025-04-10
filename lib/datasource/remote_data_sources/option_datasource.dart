import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(60)
@LazySingleton(as: AbstractDatasource, scope: 'authenticated')
class OptionDatasource extends BaseDataSource<$DataOptionsTable, DataOption>
    implements MetaDataSource<DataOption> {
  OptionDatasource({required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.db.dataOptions);

  @override
  String get apiResourceName => 'options';

  @override
  DataOption fromApiJson(Map<String, dynamic> data) =>
      DataOption.fromJson(data);
}
