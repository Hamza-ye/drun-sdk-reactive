import 'package:d_sdk/core/exception/d_error.dart';
import 'package:d_sdk/core/exception/d_error_code.dart';

class SessionExpiredException extends DError {
  SessionExpiredException()
      : super(
            errorCode: DRunErrorCode.sessionExpired,
            message: 'Expired User Session, login again');
}
