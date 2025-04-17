// import 'dart:convert';
// import 'dart:io';
//
// import 'package:d_sdk/auth/authenticated_user_detail.dart';
// import 'package:d_sdk/core/http/http_client.dart';
// import 'package:d_sdk/core/http/http_response.dart';
// import 'package:d_sdk/database/database.dart';
// import 'package:injectable/injectable.dart';
//
// // @Order(2)
// @Injectable(as: HttpClient)
// class AuthorizeHttpClientDecorator extends HttpClient<dynamic> {
//   late final HttpClient<dynamic> decoratee;
//   late final AuthenticatedUserDetail userData;
//
//   @FactoryMethod(preResolve: true)
//   static Future<AuthorizeHttpClientDecorator> postInit(
//       @Named('httpAdapter') HttpClient<dynamic> decoratee,
//       DbManager dbManager) async {
//     final user = await dbManager.loadAuthUserData();
//     return AuthorizeHttpClientDecorator()
//       ..userData = AuthenticatedUserDetail.fromMap(user.toJson())
//       ..decoratee = decoratee;
//   }
//
//   @override
//   Future<HttpResponse<dynamic>> request(
//       {required String resourceName,
//       required String method,
//       Object? data,
//       Map<String, dynamic>? headers}) {
//     // final loggedInUser = userData;
//     // final loggedInUser = ;
//
//     final authorizedHeaders = headers ?? {}
//       ..addAll({
//         HttpHeaders.authorizationHeader:
//             'Basic ${base64Encode(utf8.encode('${loggedInUser.username}:${loggedInUser.password}'))}'
//       });
//
//     return decoratee.request(
//         resourceName: resourceName,
//         method: method,
//         data: data,
//         headers: authorizedHeaders);
//   }
// }
