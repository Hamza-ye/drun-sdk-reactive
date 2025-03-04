import 'package:d2_remote/core/datarun/exception/exception.dart';

sealed class UrlFailure extends DException {
  const UrlFailure();
}

final class MalformedUrlException extends UrlFailure {
  const MalformedUrlException();

  @override
  String toString() => 'The URL format is invalid.';
}
