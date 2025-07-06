import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.userFormAccess)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class UserFormAccessesDatasource
    extends BaseDataSource<$UserFormPermissionsTable, UserFormPermission>
    implements MetaDataSource<UserFormPermission> {
  UserFormAccessesDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.userFormPermissions);

  @override
  String get resourceName => 'formPermissions';

  // @override
  // String get apiVersionPath => AppEnvironment.apiV1Path;

  @override
  Future<List<UserFormPermission>> getOnline() async {
    final response =
        await apiClient.request(resourceName: resourceName, method: 'get');

    final raw = response.data;

    /// expecting paged list ({ apiResourceName: [...] }),
    List dataItems = raw?[resourceName]?.toList() ?? [];

    return dataItems.map((item) {
      return fromApiJson(item, serializer: CustomSerializer());
    }).toList();
  }

  @override
  UserFormPermission fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return UserFormPermission.fromJson({
      ...data,
    }, serializer: serializer);
  }
}
