import 'package:d2_remote/core/datarun/exception/exception.dart';

/// Coordinate Failure
sealed class CoordinateFailure extends DException {
  const CoordinateFailure();
}

final class CoordinateMalformedException extends CoordinateFailure {
  const CoordinateMalformedException();

  @override
  String toString() => 'Coordinate is malformed.';
}
