import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/di/app_environment.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.userFormAccess)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class UserFormAccessesDatasource
    extends BaseDataSource<$UserFormPermissionsTable, UserFormPermission>
    implements MetaDataSource<UserFormPermission> {
  UserFormAccessesDatasource(
      {required super.dioClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.userFormPermissions);

  @override
  String get resourceName => 'formPermissions';

  @override
  String get apiVersionPath => AppEnvironment.apiV1Path;

  @override
  UserFormPermission fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return UserFormPermission.fromJson({
      ...data,
    }, serializer: serializer);
  }
}
