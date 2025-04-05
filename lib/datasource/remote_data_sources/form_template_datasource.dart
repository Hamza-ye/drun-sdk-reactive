import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(90)
@LazySingleton(as: AbstractDatasource)
class FormTemplateDatasource
    extends BaseDataSource<$FormTemplatesTable, FormTemplate>
    implements MetaDataSource<FormTemplate> {
  FormTemplateDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.formTemplates);

  @override
  String get apiResourceName => 'dataFormTemplates';

  @override
  FormTemplate fromApiJson(Map<String, dynamic> data) =>
      FormTemplate.fromJson(data);
}
