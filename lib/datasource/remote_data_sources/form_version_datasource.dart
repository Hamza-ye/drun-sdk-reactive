import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.formVersion)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class FormVersionDatasource
    extends BaseDataSource<$FormVersionsTable, FormVersion>
    implements MetaDataSource<FormVersion> {
  FormVersionDatasource(
      {required super.apiClient,
      required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.formVersions);

  @override
  String get resourceName => 'dataForm';

  @override
  FormVersion fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final form = data['uid'] ?? data['id'].toString();
    final treeFields = (data['fieldsConf'] as List?) ?? [];
    final fieldsConf = (data['fieldsConf'] as List?) ?? [];
    final sections = (data['fieldsConf'] as List?) ?? [];
    return FormVersion.fromJson({
      ...data,
      'id': '${form}_${data['version']}',
      'form': form,
      'treeFields': treeFields,
      'fieldsConf': fieldsConf,
      'sections': sections,
    }, serializer: serializer);
  }
}
