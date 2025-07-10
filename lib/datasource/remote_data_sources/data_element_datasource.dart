import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.dataElement)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class DataElementDatasource
    extends BaseDataSource<$DataElementsTable, DataElement>
    implements MetaDataSource<DataElement> {
  DataElementDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.dataElements);

  @override
  String get resourceName => 'dataElements';

  @override
  DataElement fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final String? optionSet = data['optionSet']?['uid'];

    return DataElement.fromJson({
      ...data,
      'optionSet': optionSet,
    }, serializer: serializer);
  }
}
