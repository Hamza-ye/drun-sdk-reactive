import 'exception.dart';

class NoCachedAuthenticatedUser extends DError {
  NoCachedAuthenticatedUser({
    String? message,
    super.cause,
    super.errorCode = DRunErrorCode.noLoggedInUser,
    super.stackTrace,
  }) : super(
            message: 'No cached user ${message != null ? ': $message' : ''}',
            errorComponent: DErrorComponent.SDK);
}
