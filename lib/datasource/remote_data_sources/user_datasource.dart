import 'package:d_sdk/core/exception/http_errors.dart';
import 'package:d_sdk/core/exception/session_expired_exception.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.user)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class UserDatasource extends BaseDataSource<$UsersTable, User>
    implements MetaDataSource<User> {
  UserDatasource({required super.dioClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.users);

  @override
  String get resourceName => 'myDetails';

  @override
  Future<List<User>> getOnline() async {
    try {
      final response = await dioClient.get(resourceFullPath,
          options: Options(
            receiveTimeout: Duration(seconds: 70),
            sendTimeout: Duration(seconds: 40),
          ));

      final raw = response.data;

      List dataItems = raw != null ? [raw] : [];

      return dataItems.map((item) {
        item['dirty'] = false;
        item['synced'] = true;

        return fromApiJson({
          ...item,
          'id': item['uid']!,
        }, serializer: CustomSerializer());
      }).toList();
    } on RevokeTokenException {
      throw SessionExpiredException();
    } catch (e) {
      logError('error fetching data', source: this);
      rethrow;
    }
  }

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
