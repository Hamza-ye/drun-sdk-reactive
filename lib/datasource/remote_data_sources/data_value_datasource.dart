import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(140)
@LazySingleton(
    as: AbstractDatasource<Insertable<dynamic>>, scope: 'authenticated')
class DataValueDatasource extends BaseDataSource<$DataValuesTable, DataValue>
    implements MetaDataSource<DataValue> {
  DataValueDatasource({required super.apiClient, required DbManager dbManager})
      : super(table: dbManager.db.dataValues, dbManager: dbManager);

  @override
  String get apiResourceName => 'dataValues';

  @override
  DataValue fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final parent = data['parent']?['uid'] ?? data['parent']?['id']?.toString();
    final submission =
        data['submission']['uid'] ?? data['submission']['id'].toString();
    final dataElement =
        data['dataElement']['uid'] ?? data['dataElement']['id']?.toString();

    return DataValue.fromJson({
      ...data,
      'parent': parent,
      'submission': submission,
      'dataElement': dataElement,
    }, serializer: serializer);
  }
}
