import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class FormVersionDatasource
    extends GenericDataSource<$FormVersionsTable, FormVersion>
    implements MetaDataSource<FormVersion> {
  FormVersionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.getActiveDb()!.formVersions);

  @override
  String get apiResourceName => 'dataFormTemplates';

  @override
  FromJsonCallback<FormVersion> get fromJsonCallback => FormVersion.fromJson;
}
