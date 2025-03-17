import 'package:d_sdk/core/exception/exception.dart';

enum Environment {
  production,
  staging,
  local;

  static Environment getValue(String? env) {
    return switch (env) {
      'production' => Environment.production,
      'staging' => Environment.production,
      'local' => Environment.production,
      _ => throw DError(
          errorCode: DRunErrorCode.unexpected,
          message: 'Environment $env is not defined')
    };
  }
}
