import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(100)
@LazySingleton(as: AbstractDatasource, scope: 'auth')
class FormVersionDatasource
    extends BaseDataSource<$FormVersionsTable, FormVersion>
    implements MetaDataSource<FormVersion> {
  FormVersionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager, table: dbManager.getActiveDb()!.formVersions);

  @override
  String get apiResourceName => 'dataForm';

  @override
  FormVersion fromApiJson(Map<String, dynamic> data) =>
      FormVersion.fromJson(data);

  Future<List<FormVersion>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final remoteData = await getOnline();
    progressCallback?.call(60);

    if (remoteData.isNotEmpty) {
      final formVersions = remoteData.map((t) => FormVersion.fromJson({
            ...t.toJson(),
            'id': '${t.id}_${t.version}',
            'version': t.version,
          }));
      await db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(db.formVersions, formVersions);
        });
      });
    }
    progressCallback?.call(100);
    return remoteData;
  }
}
