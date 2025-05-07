import 'package:dio/dio.dart';

abstract class HttpClient<T> {
  /// default http adapter instance name for unauthorized/public http requests
  static const String defaultHttpAdapterInstanceName = 'defaultHttpAdapter';

  Future<Response<T>> request({
    required String resourceName,
    required String method,
    Object? data,
    Map<String, dynamic>? headers,
  });
}
