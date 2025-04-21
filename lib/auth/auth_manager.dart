import 'package:d_sdk/use_cases/logout_strategies/logout_strategy.dart';

abstract class AuthManager {
  // Stream<AuthState> get authStateStream;

  // AuthState get currentState;

  Future<bool> isAuthenticated();
  // bool isAuthenticated();

  Future<bool> login(
      {required String username,
      required String password});

  Future<bool> logout({LogoutStrategy strategy});

  // Future<void> dispose();
}
