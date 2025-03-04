import 'package:d2_remote/core/datarun/exception/d_exception.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ValueTypeValidator<T extends DException> {
  const ValueTypeValidator();

  Result<String, T> validate(String value);
}
