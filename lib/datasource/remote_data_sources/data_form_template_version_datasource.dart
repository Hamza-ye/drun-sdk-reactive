import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.dataFormTemplate)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class DataFormTemplateDatasource extends BaseDataSource<
        $DataFormTemplateVersionsTable, DataFormTemplateVersion>
    implements MetaDataSource<DataFormTemplateVersion> {
  DataFormTemplateDatasource(
      {required super.apiClient,
      required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.db.dataFormTemplateVersions);

  @override
  String get resourceName => 'dataFormTemplates';

  @override
  DataFormTemplateVersion fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final form = data['uid'] ?? data['id'].toString();
    return DataFormTemplateVersion.fromJson({
      ...data,
      'id': '${form}_${data['version']}',
      'form': form,
      'version': data['version'],
    }, serializer: serializer);
  }
}
