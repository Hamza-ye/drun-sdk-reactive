import 'package:d2_remote/core/datarun/exception/d_error.dart';
import 'package:d2_remote/core/datarun/exception/d_error_code.dart';

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

// class DTimeoutException extends DNetworkException {
//   DTimeoutException({Exception? source, StackTrace? stackTrace})
//       : super("Request timed out. Please try again.",
//             errorCode: DErrorCode.networkTimeout,
//             cause: source,
//             stackTrace: stackTrace);
// }

// class DConnectionToServerFailedException extends DNetworkException {
//   DConnectionToServerFailedException({Exception? cause, StackTrace? stackTrace})
//       : super("Request timed out. Please try again.",
//             errorCode: DErrorCode.networkServerUnreachable,
//             cause: cause,
//             stackTrace: stackTrace);
// }

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
