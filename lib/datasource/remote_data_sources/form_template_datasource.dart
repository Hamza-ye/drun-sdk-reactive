import 'package:d_sdk/core/exception/sync_exceptions.dart';
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.formTemplate)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class DataFormTemplateDatasource
    extends BaseDataSource<$FormTemplatesTable, FormTemplate>
    implements MetaDataSource<FormTemplate> {
  DataFormTemplateDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.formTemplates);

  @override
  String get resourceName => 'formTemplates';

  Future<List<FormTemplate>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    // fetch templates
    final remoteData = await getOnline();

    // fetch versions
    final List<FormTemplateVersion> formVersions = await _getFormVersions();
    final versionsFormUIDs = formVersions.map((v) => v.template);
    final formTemplatesWithoutVersion =
        remoteData.where((template) => !versionsFormUIDs.contains(template.id));
    if (formTemplatesWithoutVersion.isNotEmpty) {
      throw DSyncException(
          message:
              'could not fetch versions for templates: $formTemplatesWithoutVersion');
    }

    progressCallback?.call(60);

    if (remoteData.isNotEmpty && formVersions.isNotEmpty) {
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, remoteData);
        });

        await db.batch((b) {
          b.insertAllOnConflictUpdate(db.formTemplateVersions, formVersions);
        });
      });
    }

    progressCallback?.call(100);
    return remoteData;
  }

  Future<List<FormTemplateVersion>> _getFormVersions() async {
    final formVersionResourceName = 'formTemplateVersions';

    final resourcePath = '$formVersionResourceName$pathPostfix';
    final response =
        await apiClient.request(resourceName: resourcePath, method: 'get');

    final raw = response.data;

    List dataItems = raw?[formVersionResourceName]?.toList() ?? [];

    return dataItems.map((item) {
      return FormTemplateVersion.fromJson({
        ...item,
        'id': item['uid']!,
        'template': item['templateUid']!,
      }, serializer: CustomSerializer());
    }).toList();
  }

  @override
  FormTemplate fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return FormTemplate.fromJson(data, serializer: serializer);
  }
}
