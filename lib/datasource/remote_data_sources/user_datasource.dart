import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class UserDatasource extends GenericDataSource<$UsersTable, User>
    implements MetaDataSource<User> {
  UserDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.getActiveDb()!.users);

  @override
  String get apiResourceName => 'me';

  @override
  FromJsonCallback<User> get fromJsonCallback => User.fromJson;
}
