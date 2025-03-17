import 'dart:io';
import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/http/http_response.dart';
import 'package:dio/dio.dart' as dio;

/// dio initialization
/// ```dart
///  Dio(BaseOptions(
///   baseUrl: 'https://api.nmcpye.org'
///   connectTimeout: Duration(milliseconds: 100000),
///   receiveTimeout: Duration(milliseconds: 100000),
///   headers: {
///     HttpHeaders.authorizationHeader:
///         '${httpDetails.authTokenType} ${httpDetails.authToken}',
///     HttpHeaders.contentTypeHeader: 'application/json'
///   }));
/// ```
class HttpAdapter implements HttpClient {
  final dio.Dio dioClient;

  HttpAdapter(this.dioClient);

  Future<HttpResponse> request(
      {
      // pass on dio init config
      // required String url,
      required String resourceName,
      required String method,
      Map? data,
      Map? headers}) async {
    final defaultHeaders = headers?.cast<String, String>() ?? {}
      ..addAll({HttpHeaders.contentTypeHeader: 'application/json'});

    final resourcePath = '/$resourceName';
    dio.Response response = noResponse(
        url: resourcePath, method: method, data: data, headers: defaultHeaders);
    Future<dio.Response>? futureResponse;
    try {
      if (method == 'post') {
        futureResponse = dioClient.post(resourcePath,
            data: data,
            options: dio.Options(
                receiveTimeout: Duration(milliseconds: 100000),
                headers: defaultHeaders));
      } else if (method == 'get') {
        futureResponse = dioClient.get(resourcePath,
            options: dio.Options(headers: defaultHeaders));
      } else if (method == 'put') {
        futureResponse = data == null
            ? dioClient.put(resourcePath)
            : dioClient.put(resourcePath,
                data: data, options: dio.Options(headers: defaultHeaders));
      }

      if (futureResponse != null) {
        response = await futureResponse.timeout(Duration(seconds: 20));
      }
    } on dio.DioError catch (error) {
      throw HttpFailure.fromDioError(error, stackTrace: StackTrace.current);
    }
    return _handleResponse(response);
  }

  HttpResponse _handleResponse(dio.Response response) {
    return switch (response.statusCode) {
      == 200 => HttpResponse(response: response),
      _ => throw HttpFailure.error(response, stackTrace: StackTrace.current),
    };
  }

  dio.Response noResponse(
      {required String url,
      required String method,
      Map? data,
      Map<String, dynamic>? headers}) {
    dio.RequestOptions requestOptions = dio.RequestOptions(
      method: method,
      baseUrl: dioClient.options.baseUrl,
      data: data,
      connectTimeout: dioClient.options.connectTimeout,
      receiveTimeout: dioClient.options.receiveTimeout,
      headers: headers,
    );

    return dio.Response(
        data: '', statusCode: 500, requestOptions: requestOptions);
  }
}
