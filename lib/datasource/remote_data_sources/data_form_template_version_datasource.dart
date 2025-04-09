import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(90)
@LazySingleton(as: AbstractDatasource, scope: 'auth')
class DataFormTemplateDatasource extends BaseDataSource<
        $DataFormTemplateVersionsTable, DataFormTemplateVersion>
    implements MetaDataSource<DataFormTemplateVersion> {
  DataFormTemplateDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.dataFormTemplateVersions);

  @override
  String get apiResourceName => 'dataFormTemplates';

  @override
  DataFormTemplateVersion fromApiJson(Map<String, dynamic> data) =>
      DataFormTemplateVersion.fromJson(data);

  Future<List<DataFormTemplateVersion>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final remoteData = await getOnline();
    progressCallback?.call(60);

    if (remoteData.isNotEmpty) {
      final formVersions =
          remoteData.map((t) => DataFormTemplateVersion.fromJson({
                ...t.toJson(),
                'id': '${t.id}_${t.version}',
                'version': t.version,
              }));
      await db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(
              db.dataFormTemplateVersions, formVersions);
        });
      });
    }
    progressCallback?.call(100);
    return remoteData;
  }
}
