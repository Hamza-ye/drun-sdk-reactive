import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class OptionSetDatasource
    extends GenericDataSource<$DataOptionSetsTable, DataOptionSet>
    implements MetaDataSource<DataOptionSet> {
  OptionSetDatasource({required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.dataOptionSets);

  @override
  String get apiResourceName => 'optionSets';

  @override
  FromJsonCallback<DataOptionSet> get fromJsonCallback =>
      DataOptionSet.fromJson;
}
