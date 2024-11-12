import 'package:d2_remote/core/datarun/exception/d_error_code.dart';
import 'package:d2_remote/core/datarun/exception/d_exception.dart';

class DError implements DException {
  DError(
      {this.url,
      this.errorComponent,
      this.cause,
      required this.errorCode,
      required this.message,
      this.httpErrorCode,
      this.stackTrace,
      this.shouldShowMessage = true})
      : this.time = DateTime.now();

  final String? url;
  final DErrorComponent? errorComponent;
  final DErrorCode errorCode;
  final String message;
  final int? httpErrorCode;
  final Object? cause;
  final DateTime? time;
  final StackTrace? stackTrace;
  final bool shouldShowMessage;

  bool isOffline() {
    return errorCode == DErrorCode.networkTimeout ||
        errorCode == DErrorCode.networkConnectionFailed;
  }

// return switch (originalException) {
//   final String s => s,
//   DException(:final message, :final source) => source,
//   _ => originalException,
// };
//
// originalException != null ? originalException is DException
//     ? DException(originalException.message, originalException)
//     : null;
// }
}
