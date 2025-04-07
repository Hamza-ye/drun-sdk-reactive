import 'package:d_sdk/core/http/http_response.dart';

abstract class HttpClient<T> {
  Future<HttpResponse<T>> request({
    required String resourceName,
    required String method,
    Object? data,
    Map? headers,
  });
}
