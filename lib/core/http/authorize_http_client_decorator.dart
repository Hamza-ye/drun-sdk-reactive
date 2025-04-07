import 'dart:convert';
import 'dart:io';

import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/http/http_adapter.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/http/http_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HttpClient)
class AuthorizeHttpClientDecorator extends HttpClient {
  final AuthManager _sdkAuthManager;
  final HttpClient decoratee;

  AuthorizeHttpClientDecorator(
    this._sdkAuthManager,
    @Named.from(HttpAdapter) this.decoratee,
  );

  Future<HttpResponse> request({
    required String resourceName,
    required String method,
    Object? data,
    Map? headers,
  }) async {
    final loggedInUser = await _sdkAuthManager.getCurrentUser();

    final authorizedHeaders = headers ?? {}
      ..addAll({
        HttpHeaders.authorizationHeader:
            'Basic ${base64Encode(utf8.encode('${loggedInUser?.username}:${loggedInUser?.password}'))}'
      });

    return decoratee.request(
        resourceName: resourceName,
        method: method,
        data: data,
        headers: authorizedHeaders);
  }
}
