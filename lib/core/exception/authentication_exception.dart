import 'package:d_sdk/core/exception/exception.dart';

class AuthenticationException extends DError {
  AuthenticationException(
    String message, {
    String? url,
    bool shouldShowMessage = true,
    super.httpErrorCode,
    DErrorComponent? errorComponent = DErrorComponent.SDK,
    super.cause,
    super.stackTrace,
    required super.errorCode,
  }) : super(
            message: message,
            shouldShowMessage: shouldShowMessage,
            url: url,
            errorComponent: errorComponent);
}
