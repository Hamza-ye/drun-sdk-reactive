import 'package:d_sdk/core/exception/exception.dart';

class AuthenticationException extends DError {
  final String? username;

  AuthenticationException(
    String message, {
    super.url,
    this.username,
    super.cause,
    required super.errorCode,
    super.httpErrorCode,
    super.stackTrace,
  }) : super(message: message, errorComponent: DErrorComponent.Server);
}

class AccountException extends DError {
  AccountException(
    String message, {
    super.cause,
    required super.errorCode,
    super.httpErrorCode,
    super.stackTrace,
  }) : super(message: message, errorComponent: DErrorComponent.Server);
}

// class InvalidCredentialsException extends DAuthenticationException {
//   InvalidCredentialsException({Exception? cause, StackTrace? stackTrace})
//       : super("Invalid login credentials provided.",
//             errorCode: DErrorCode.authInvalidCredentials,
//             cause: cause,
//             httpErrorCode: 401,
//             stackTrace: stackTrace);
// }
//
// class NoAuthenticatedUserException extends DAuthenticationException {
//   NoAuthenticatedUserException({Exception? cause, StackTrace? stackTrace})
//       : super("No Authenticated User.",
//             errorCode: DErrorCode.noAuthenticatedUser,
//             cause: cause,
//             stackTrace: stackTrace);
// }
//
// class NoAuthenticatedUserOfflineException extends DAuthenticationException {
//   NoAuthenticatedUserOfflineException(
//       {Exception? cause, StackTrace? stackTrace})
//       : super("No Authenticated User Offline.",
//             errorCode: DErrorCode.noAuthenticatedUserOffline,
//             cause: cause,
//             stackTrace: stackTrace);
// }
//
// class DifferentOfflineUserException extends DAuthenticationException {
//   DifferentOfflineUserException(
//       {Exception? cause, StackTrace? stackTrace})
//       : super("Different Offline User.",
//       errorCode: DErrorCode.differentOfflineUser,
//       cause: cause,
//       stackTrace: stackTrace);
// }
//
// class SessionExpiredException extends DAuthenticationException {
//   SessionExpiredException({Exception? cause, StackTrace? stackTrace})
//       : super("Your session has expired. Please log in again.",
//             errorCode: DErrorCode.authSessionExpired,
//             cause: cause,
//             stackTrace: stackTrace);
// }
//errorAccountDisabled
