import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(50)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class OptionSetDatasource
    extends BaseDataSource<$DataOptionSetsTable, DataOptionSet>
    implements MetaDataSource<DataOptionSet> {
  OptionSetDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.dataOptionSets);

  @override
  String get apiResourceName => 'optionSets';

  @override
  DataOptionSet fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      DataOptionSet.fromJson(data, serializer: serializer);
}
