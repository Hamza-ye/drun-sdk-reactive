import 'package:d2_remote/core/datarun/exception/exception.dart';

/// Text Failure
final class FullNameFailure extends DException {
  const FullNameFailure();

  @override
  String toString() => 'Value is not a full name.';
}
