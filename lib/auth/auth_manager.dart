import 'package:d_sdk/auth/auth_state.dart';
import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategy.dart';

abstract class AuthManager {
  Stream<AuthState> get authStateStream;

  AuthState get currentState;

  Future<bool> isAuthenticated();
  // bool isAuthenticated();

  Future<void> login(
      {required String username,
      required String password,
      required ServerConfig server});

  Future<void> logout({LogoutStrategy strategy});

  Future<void> dispose();
}
