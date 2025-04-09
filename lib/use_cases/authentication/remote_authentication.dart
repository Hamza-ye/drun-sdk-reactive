import 'dart:io';

import 'package:d_sdk/core/auth/authentication_params.dart';
import 'package:d_sdk/core/auth/authentication_service.dart';
import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/http/http-details.util.dart';
import 'package:d_sdk/core/http/http_adapter.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationService)
class RemoteAuthentication implements AuthenticationService {
  final HttpClient httpClient;
  final AppEnvironmentInstance envInstance;

  RemoteAuthentication(
      {@Named.from(HttpAdapter) required this.httpClient,
      required this.envInstance});

  Future<User> auth(AuthenticationParams params) async {
    HttpDetails httpDetails =
        HttpDetails(username: params.username, password: params.password);
    final authHeaders = {
      HttpHeaders.authorizationHeader:
          '${httpDetails.authTokenType} ${httpDetails.authToken}'
    };

    try {
      final httpResponse = await httpClient.request(
          resourceName:
              '${envInstance.apiPath}/${envInstance.apiUserAuthResource}',
          method: 'get',
          headers: authHeaders);

      final data = httpResponse.data;
      final user = User.fromJson({
        ...?data,
        'id': httpResponse.data['uid'],
        'username': params.username,
        'password': params.password,
      });

      return user;
    } on AuthFailure catch (_error) {
      logError(_error.message, data: _error.toMap());
      rethrow;
    } catch (_error) {
      final error = _error.toString();
      throw AuthFailure(
          _error.toString().substring(0, error.length > 80 ? 80 : null),
          errorCode: DRunErrorCode.unexpected,
          errorComponent: DErrorComponent.SDK,
          stackTrace: StackTrace.current,
          cause: _error);
    }
  }
}
