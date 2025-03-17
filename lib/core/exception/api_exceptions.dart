import 'package:d_sdk/core/exception/exception.dart';
import 'package:dio/dio.dart';

class HttpFailure extends DError {
  HttpFailure._(
    String message, {
    String? url,
    bool shouldShowMessage = true,
    super.httpErrorCode,
    DErrorComponent? errorComponent = DErrorComponent.Server,
    super.cause,
    super.stackTrace,
    required super.errorCode,
  }) : super(
            message: message,
            shouldShowMessage: shouldShowMessage,
            url: url,
            errorComponent: errorComponent);

  factory HttpFailure.error(Response? response, {StackTrace? stackTrace}) =>
      switch (response) {
        Response(:final statusCode) when statusCode == 200 => HttpFailure._(
            'Bad request',
            url: response.requestOptions.path,
            httpErrorCode: response.statusCode,
            errorCode: DRunErrorCode.badRequest,
            stackTrace: stackTrace,
            cause: response),
        Response(:final statusCode) when statusCode == 401 => HttpFailure._(
            'unauthorized',
            url: response.requestOptions.path,
            httpErrorCode: response.statusCode,
            errorCode: DRunErrorCode.unauthorized,
            stackTrace: stackTrace,
            cause: response),
        Response(:final statusCode) when statusCode == 403 => HttpFailure._(
            'forbidden',
            url: response.requestOptions.path,
            httpErrorCode: response.statusCode,
            errorCode: DRunErrorCode.forbidden,
            stackTrace: stackTrace,
            cause: response),
        Response(:final statusCode) when statusCode == 404 => HttpFailure._(
            'not found',
            url: response.requestOptions.path,
            httpErrorCode: response.statusCode,
            errorCode: DRunErrorCode.notFound,
            stackTrace: stackTrace,
            cause: response),
        _ => HttpFailure._('http server Error',
            url: response?.requestOptions.path,
            httpErrorCode: response?.statusCode,
            errorCode: DRunErrorCode.unexpected,
            stackTrace: stackTrace,
            cause: response),
      };

  factory HttpFailure.fromDioError(DioError error, {StackTrace? stackTrace}) {
    return switch (error.type) {
      DioErrorType.connectionTimeout ||
      DioErrorType.receiveTimeout ||
      DioErrorType.sendTimeout =>
        HttpFailure._(error.message ?? 'Connection timeout',
            url: error.requestOptions.path,
            httpErrorCode: error.response?.statusCode,
            errorCode: DRunErrorCode.networkTimeout,
            stackTrace: stackTrace,
            cause: error.error),
      DioErrorType.badResponse => HttpFailure._(error.message ?? 'Bad response',
          url: error.requestOptions.path,
          httpErrorCode: error.response?.statusCode,
          errorCode: DRunErrorCode.networkConnectionFailed,
          stackTrace: stackTrace,
          cause: error.error),
      DioErrorType.cancel => HttpFailure._(error.message ?? 'Cancel',
          shouldShowMessage: false,
          url: error.requestOptions.path,
          httpErrorCode: error.response?.statusCode,
          errorCode: DRunErrorCode.unexpected,
          stackTrace: stackTrace,
          cause: error.error),
      DioErrorType.connectionError => HttpFailure._(
          error.message ?? 'Bad Response',
          url: error.requestOptions.path,
          httpErrorCode: error.response?.statusCode,
          errorCode: DRunErrorCode.badResponse,
          stackTrace: stackTrace,
          cause: error.error),
      DioErrorType.badCertificate => HttpFailure._(
          error.message ?? 'Bad Http Certificate',
          url: error.requestOptions.path,
          httpErrorCode: error.response?.statusCode,
          errorCode: DRunErrorCode.badCertificate,
          stackTrace: stackTrace,
          cause: error.error),
      DioErrorType.unknown =>
        HttpFailure.error(error.response, stackTrace: stackTrace),
    };
  }
}

class AuthFailure extends DError {
  AuthFailure(
    String message, {
    String? url,
    bool shouldShowMessage = true,
    super.httpErrorCode,
    DErrorComponent? errorComponent = DErrorComponent.Server,
    super.cause,
    super.stackTrace,
    required super.errorCode,
  }) : super(
            message: message,
            shouldShowMessage: shouldShowMessage,
            url: url,
            errorComponent: errorComponent);
}
