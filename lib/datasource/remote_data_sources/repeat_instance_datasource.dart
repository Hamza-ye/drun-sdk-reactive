import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(130)
@LazySingleton(
    as: AbstractDatasource<Insertable<dynamic>>, scope: 'authenticated')
class RepeatInstanceDatasource
    extends BaseDataSource<$RepeatInstancesTable, RepeatInstance>
    implements MetaDataSource<RepeatInstance> {
  RepeatInstanceDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.repeatInstances);

  @override
  String get apiResourceName => 'repeatInstances';

  @override
  RepeatInstance fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      RepeatInstance.fromJson(data, serializer: serializer);
}
