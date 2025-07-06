import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.optionSet)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class OptionSetDatasource
    extends BaseDataSource<$DataOptionSetsTable, DataOptionSet>
    implements MetaDataSource<DataOptionSet> {
  OptionSetDatasource({required super.apiClient,
    required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.dataOptionSets);

  @override
  String get resourceName => 'optionSets';

  @override
  DataOptionSet fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) =>
      DataOptionSet.fromJson(data, serializer: serializer);
}
