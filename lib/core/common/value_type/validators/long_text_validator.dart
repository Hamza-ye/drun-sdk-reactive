import 'package:d2_remote/core/common/value_type/failures/long_text_failure.dart';
import 'package:d2_remote/core/common/value_type/validators/value_type_validator.dart';

import '../../../mp/helpers/result.dart';

class LongTextValidator extends ValueTypeValidator<LongTextFailure> {
  const LongTextValidator();

  @override
  Result<String, LongTextFailure> validate(String value) {
    return Result.success(value);
  }
}
