// import 'package:d_sdk/core/logging/new_app_logging.dart';
// import 'package:dio/dio.dart';
//
// class CustomInterceptors extends Interceptor {
//   final FetchSecureCacheStorage fetchSecureCacheStorage;
//   final DeleteSecureCacheStorage deleteSecureCacheStorage;
//   final HttpClient decoratee;
//
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     logError('REQUEST[${options.method}] => PATH: ${options.path}');
//     super.onRequest(options, handler);
//   }
//
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     logError(
//         'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
//     super.onResponse(response, handler);
//   }
//
//   @override
//   Future onError(DioError err, ErrorInterceptorHandler handler) async {
//     logError(
//         'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
//     super.onError(err, handler);
//   }
// }
