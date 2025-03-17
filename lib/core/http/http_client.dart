import 'package:d_sdk/core/exception/api_exceptions.dart';
import 'package:d_sdk/core/exception/d_error.dart';
import 'package:d_sdk/core/http/http_response.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class HttpClient<T> {
  Future<HttpResponse<T>> request({
    required String resourceName,
    required String method,
    Map? data,
    Map? headers,
  });
}
