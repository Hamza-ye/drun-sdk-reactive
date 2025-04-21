import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

// @Order(140)
// @Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class DataValueDatasource extends BaseDataSource<$DataValuesTable, DataValue>
    implements MetaDataSource<DataValue> {
  DataValueDatasource(
      {required super.dioClient,
      required DbManager dbManager,
      @Named('apiPath') required super.apiPath})
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
