import 'dart:convert' show base64Encode, utf8;
import 'dart:io' show HttpHeaders;

import 'package:d_sdk/auth/authenticated_user_detail.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/http/http_response.dart';
import 'package:d_sdk/d_sdk.dart' show DSdk;
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:injectable/injectable.dart';

@Order(2)
@Injectable(as: HttpClient)
class AuthorizeHttpClientDecorator extends HttpClient<dynamic> {
  late final HttpClient<dynamic> decoratee;
  late final AuthUserData userData;

  // AuthorizeHttpClientDecorator(@Named('httpAdapter') this.decoratee);

  @FactoryMethod(preResolve: true)
  static Future<AuthorizeHttpClientDecorator> postInit(
      @Named('httpAdapter') HttpClient<dynamic> decoratee) async {
    final user = await rSdkLocator<DbManager>().loadAuthUserData();
    return AuthorizeHttpClientDecorator()
      ..userData = AuthUserData.fromMap(user.toJson())
      ..decoratee = decoratee;
  }

  @override
  Future<HttpResponse> request(
      {required String resourceName,
      required String method,
      Object? data,
      Map<dynamic, dynamic>? headers}) {
    final loggedInUser = DSdk.currentAuthUser;

    final authorizedHeaders = headers ?? {}
      ..addAll({
        HttpHeaders.authorizationHeader:
            'Basic ${base64Encode(utf8.encode('${loggedInUser.username}:${loggedInUser.password}'))}'
      });

    return decoratee.request(
        resourceName: resourceName,
        method: method,
        data: data,
        headers: authorizedHeaders);
  }
}
