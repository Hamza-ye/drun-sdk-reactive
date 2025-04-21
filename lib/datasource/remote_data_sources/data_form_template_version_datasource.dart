import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(90)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class DataFormTemplateDatasource extends BaseDataSource<
        $DataFormTemplateVersionsTable, DataFormTemplateVersion>
    implements MetaDataSource<DataFormTemplateVersion> {
  DataFormTemplateDatasource(
      {required super.dioClient,
      required DbManager dbManager,
      @Named('apiPath') required super.apiPath})
      : super(
            dbManager: dbManager, table: dbManager.db.dataFormTemplateVersions);

  @override
  String get apiResourceName => 'dataFormTemplates';

  @override
  DataFormTemplateVersion fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final form = data['uid'] ?? data['id'].toString();
    return DataFormTemplateVersion.fromJson({
      ...data,
      'id': '${form}_${data['version']}',
      'form': form,
    }, serializer: serializer);
  }
}
