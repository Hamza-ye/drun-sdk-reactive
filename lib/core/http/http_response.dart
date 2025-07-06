// import 'package:dio/dio.dart';
//
// class HttpResponse<T> extends Response {
//   Response<T> _response;
//
//   HttpResponse({
//     Response<T>? response,
//   })  : this._response = response ??
//             Response(
//                 data: response?.data,
//                 requestOptions: RequestOptions(),
//                 statusCode: 500,
//                 headers: response?.headers),
//         super(requestOptions: response?.requestOptions ?? RequestOptions()) {}
//
//   @override
//   get data => _response.data;
//
//   @override
//   Map<String, dynamic> get extra => _response.extra;
//
//   @override
//   Headers get headers => _response.headers;
//
//   @override
//   bool get isRedirect => _response.isRedirect;
//
//   @override
//   List<RedirectRecord> get redirects => _response.redirects;
//
//   @override
//   RequestOptions get requestOptions => _response.requestOptions;
//
//   @override
//   int? get statusCode => _response.statusCode;
//
//   @override
//   String? get statusMessage => _response.statusMessage;
//
//   @override
//   Uri get realUri => _response.realUri;
// }
