import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(70)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class DataElementDatasource
    extends BaseDataSource<$DataElementsTable, DataElement>
    implements MetaDataSource<DataElement> {
  DataElementDatasource(
      {required super.dioClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.dataElements);

  @override
  String get apiResourceName => 'dataElements';

  @override
  DataElement fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      DataElement.fromJson(data, serializer: serializer);
}
