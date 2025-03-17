import 'dart:io';

import 'package:d_sdk/core/auth/authentication_params.dart';
import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/http/http-details.util.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/core/auth/authentication_service.dart';

class RemoteAuthentication implements AuthenticationService {
  final HttpClient httpClient;
  final String authResourceName;

  RemoteAuthentication(
      {required this.httpClient, required this.authResourceName});

  Future<User> auth(AuthenticationParams params) async {
    HttpDetails httpDetails =
        HttpDetails(username: params.username, password: params.password);
    final authHeaders = {
      HttpHeaders.authorizationHeader:
          '${httpDetails.authTokenType} ${httpDetails.authToken}'
    };

    try {
      final httpResponse = await httpClient.request(
          resourceName: authResourceName, method: 'get', headers: authHeaders);

      return User.fromJson({
        ...httpResponse.data,
        'id': httpResponse.data['uid'],
      });
    } on AuthFailure catch (_error) {
      logError(_error.message, data: _error.toMap());
      rethrow;
    } catch (_error) {
      throw AuthFailure(_error.toString().substring(0, 80),
          errorCode: DRunErrorCode.unexpected,
          errorComponent: DErrorComponent.SDK,
          stackTrace: StackTrace.current,
          cause: _error);
    }
  }
}
