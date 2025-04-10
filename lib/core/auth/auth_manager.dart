import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/core/exception/api_exceptions.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategy.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AuthManager {
  Future<bool> isAuthenticated();

  Future<Result<User, AuthFailure>> authenticate(
      {required String username,
      required String password,
      required ServerConfig server});

  Future<void> logout({LogoutStrategy strategy});
}
