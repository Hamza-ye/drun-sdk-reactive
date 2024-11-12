import 'package:d2_remote/core/datarun/exception/d_error.dart';
import 'package:d2_remote/core/datarun/exception/d_error_code.dart';

class DSyncException extends DError {
  DSyncException(
    String message, {
    super.url,
    super.cause,
    super.errorCode = DErrorCode.syncError,
    super.httpErrorCode,
    super.stackTrace,
  }) : super(message: message, errorComponent: DErrorComponent.SDK);
}
