import 'package:d_sdk/core/exception/exception.dart';

class DDatabaseException extends DError {
  DDatabaseException(
    String message, {
    super.cause,
    required super.errorCode,
    super.stackTrace,
  }) : super(message: message, errorComponent: DErrorComponent.Database);
}

class DDatabaseConnectionException extends DDatabaseException {
  DDatabaseConnectionException({Exception? cause, StackTrace? stackTrace})
      : super("Failed to connect to the database.",
            cause: cause,
            stackTrace: stackTrace,
            errorCode: DErrorCode.databaseConnectionFailed);
}

class DRecordNotFoundException extends DDatabaseException {
  DRecordNotFoundException(
    String recordId, {
    Exception? cause,
    StackTrace? stackTrace,
  }) : super("record $recordId not found.",
            cause: cause,
            stackTrace: stackTrace,
            errorCode: DErrorCode.databaseQueryFailed);
}

class DDataIntegrityException extends DDatabaseException {
  DDataIntegrityException(
    String message, {
    Exception? cause,
    StackTrace? stackTrace,
  }) : super(message,
            cause: cause,
            stackTrace: stackTrace,
            errorCode: DErrorCode.databaseInternalError);
}
