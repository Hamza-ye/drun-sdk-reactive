import 'package:d2_remote/core/datarun/exception/exception.dart';

/// Time Failure
sealed class TimeFailure extends DException {
  const TimeFailure();

}

final class TimeParseException extends TimeFailure {
  const TimeParseException();

  @override
  String toString() => 'Failed to parse time.';
}
