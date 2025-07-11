import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:drift/drift.dart';

// @Order(DSOrder.formTemplateVersion)
// @Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class FormTemplateVersionDatasource
    extends BaseDataSource<$FormTemplateVersionsTable, FormTemplateVersion>
    implements MetaDataSource<FormTemplateVersion> {
  FormTemplateVersionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.formTemplateVersions);

  @override
  String get resourceName => 'formTemplateVersions';

  @override
  FormTemplateVersion fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return FormTemplateVersion.fromJson({
      ...data,
      'template': data['templateUid'],
    }, serializer: serializer);
  }
}
