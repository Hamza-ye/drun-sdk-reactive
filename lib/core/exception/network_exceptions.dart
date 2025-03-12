import 'package:d_sdk/core/exception/exception.dart';

class NetworkException extends DError {
  NetworkException(
    String message, {
    super.url,
    super.cause,
    required super.errorCode,
    super.httpErrorCode,
    super.stackTrace,
  }) : super(message: message, errorComponent: DErrorComponent.SDK);
}

class InternalServerError extends NetworkException {
  InternalServerError(
      {int? httpErrorCode,
      String? url,
      String? message,
      Exception? cause,
      StackTrace? stackTrace})
      : super(message ?? "Internal Server Error.",
            url: url,
            errorCode: DErrorCode.apiError,
            httpErrorCode: httpErrorCode,
            cause: cause,
            stackTrace: stackTrace);
}
