import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(50)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class OptionSetDatasource
    extends BaseDataSource<$DataOptionSetsTable, DataOptionSet>
    implements MetaDataSource<DataOptionSet> {
  OptionSetDatasource(
      {required super.dioClient,
      required DbManager dbManager,
      @Named('apiPath') required super.apiPath})
      : super(dbManager: dbManager, table: dbManager.db.dataOptionSets);

  @override
  String get apiResourceName => 'optionSets';

  @override
  DataOptionSet fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      DataOptionSet.fromJson(data, serializer: serializer);
}
