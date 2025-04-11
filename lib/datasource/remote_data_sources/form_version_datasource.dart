import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(100)
@LazySingleton(
    as: AbstractDatasource<Insertable<dynamic>>, scope: 'authenticated')
class FormVersionDatasource
    extends BaseDataSource<$FormVersionsTable, FormVersion>
    implements MetaDataSource<FormVersion> {
  FormVersionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.formVersions);

  @override
  String get apiResourceName => 'dataForm';

  @override
  FormVersion fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      FormVersion.fromJson(
          {...data, 'id': '${data['uid'] ?? data['id']}_${data['version']}'},
          serializer: serializer);
}
