import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(90)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class DataFormTemplateDatasource extends BaseDataSource<
        $DataFormTemplateVersionsTable, DataFormTemplateVersion>
    implements MetaDataSource<DataFormTemplateVersion> {
  DataFormTemplateDatasource(
      {required super.apiClient, required DbManager dbManager})
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
