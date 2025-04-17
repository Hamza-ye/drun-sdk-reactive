import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(40)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class UserDatasource extends BaseDataSource<$UsersTable, User>
    implements MetaDataSource<User> {
  UserDatasource({required super.dioClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.users);

  @override
  String get apiResourceName => 'me';

  @override
  User fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer}) {
    final authorities = (data['authorities'] as List<dynamic>)
        .map<String>((e) => e as String)
        .toList();

    return User.fromJson({
      ...data,
      'username': data['login'],
      'authorities': authorities,
    }, serializer: serializer);
  }
}
