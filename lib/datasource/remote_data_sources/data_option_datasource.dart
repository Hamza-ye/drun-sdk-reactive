import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

// @Order(60)
// @Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class OptionDatasource extends BaseDataSource<$DataOptionsTable, DataOption>
    implements MetaDataSource<DataOption> {
  OptionDatasource(
      {required super.dioClient,
      required DbManager dbManager,
      @Named('apiPath') required super.apiPath})
      : super(dbManager: dbManager, table: dbManager.db.dataOptions);

  @override
  String get apiResourceName => 'options';

  @override
  DataOption fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final optionSet =
        data['optionSet']['uid'] ?? data['optionSet']['id'].toString();
    return DataOption.fromJson({...data, 'optionSet': optionSet},
        serializer: serializer);
  }
}
