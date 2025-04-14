// import 'dart:io';
//
// import 'package:d_sdk/core/config/constants.dart';
// import 'package:d_sdk/core/http/http-details.util.dart';
// import 'package:d_sdk/core/exception/http_errors.dart';
// import 'package:d_sdk/database/app_database.dart';
// import 'package:dio/dio.dart';
// import 'package:multiple_result/multiple_result.dart';
//
// class HttpClient {
//   static Future<Result<HttpResponse, HttpFailure>> post(
//       String resourceUrl, dynamic data,
//       {String? baseUrl,
//       String? username,
//       String? password,
//       AppDatabase? database,
//       Dio? dioTestClient}) async {
//     HttpDetails httpDetails = await HttpDetails(
//             baseUrl: baseUrl,
//             username: username,
//             password: password,
//             database: database)
//         .get();
//     final dioClient = dioTestClient ??
//         Dio(BaseOptions(
//             connectTimeout: Duration(milliseconds: 100000),
//             receiveTimeout: Duration(milliseconds: 100000),
//             headers: {
//               HttpHeaders.authorizationHeader:
//               '${httpDetails.authTokenType} ${httpDetails.authToken}',
//               HttpHeaders.contentTypeHeader: 'application/json'
//             }));
//
//     Future<Response<dynamic>>? response = null;
//
//     try {
//       response = dioClient
//           .post('${httpDetails.baseUrl}$kApiPath$resourceUrl', data: data, options: Options(
//     receiveTimeout: Duration(milliseconds: 100000),
//     headers: {
//       HttpHeaders.authorizationHeader:
//       '${httpDetails.authTokenType} ${httpDetails.authToken}',
//       HttpHeaders.contentTypeHeader: 'application/json'
//     } ));
//
//       return Success(HttpResponse(
//           statusCode: response.statusCode ?? 500, body: response.data));
//     } on DioError catch (error) {
//       return Error(HttpFailure.fromDioError(error,
//           url: httpDetails.baseUrl, httpErrorCode: response?.statusCode));
//     }
//   }
//
//   static Future<Result<HttpResponse, HttpFailure>> put(
//       String resourceUrl, dynamic data,
//       {String? baseUrl,
//       String? username,
//       String? password,
//       AppDatabase? database,
//       Dio? dioTestClient}) async {
//     HttpDetails httpDetails = await HttpDetails(
//             baseUrl: baseUrl,
//             username: username,
//             password: password,
//             database: database)
//         .get();
//
//     final dioClient = dioTestClient ??
//         Dio(BaseOptions(
//             connectTimeout: Duration(milliseconds: 100000),
//             receiveTimeout: Duration(milliseconds: 100000),
//             headers: {
//               HttpHeaders.authorizationHeader:
//                   '${httpDetails.authTokenType} ${httpDetails.authToken}',
//               HttpHeaders.contentTypeHeader: 'application/json'
//             }));
//
//     Response<dynamic>? response = null;
//     RequestOptions requestOptions = RequestOptions(method: );
//     try {
//       response = data == null
//           ? await dioClient.put('${httpDetails.baseUrl}$kApiPath$resourceUrl')
//           : await dioClient.put('${httpDetails.baseUrl}$kApiPath$resourceUrl',
//               data: data);
//
//       return Success(HttpResponse(
//           statusCode: response.statusCode ?? 500, body: response.data));
//     } on DioError catch (error) {
//       return Error(HttpFailure.fromDioError(error,
//           url: httpDetails.baseUrl, httpErrorCode: response?.statusCode));
//     }
//   }
//
//   static Future<Result<HttpResponse, HttpFailure>> get(String resourceUrl,
//       {String? baseUrl,
//       String? username,
//       String? password,
//       AppDatabase? database,
//       Dio? dioTestClient}) async {
//     HttpDetails httpDetails = await HttpDetails(
//             baseUrl: baseUrl,
//             username: username,
//             password: password,
//             database: database)
//         .get();
//
//     final dioClient = dioTestClient ??
//         Dio(BaseOptions(
//             connectTimeout: Duration(milliseconds: 100000),
//             receiveTimeout: Duration(milliseconds: 100000),
//             headers: {
//               HttpHeaders.authorizationHeader:
//                   '${httpDetails.authTokenType} ${httpDetails.authToken}',
//             }));
//     Response<dynamic>? response = null;
//
//     try {
//       response =
//           await dioClient.get('${httpDetails.baseUrl}$kApiPath$resourceUrl');
//
//       return Success(HttpResponse(
//           statusCode: response.statusCode ?? 500, body: response.data));
//     } on DioError catch (error) {
//       return Error(HttpFailure.fromDioError(error,
//           url: httpDetails.baseUrl, httpErrorCode: response?.statusCode));
//     }
//   }
// }
