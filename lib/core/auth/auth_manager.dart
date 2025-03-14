import 'package:d_sdk/core/auth/auth_state.dart';
import 'package:d_sdk/core/auth/cached_user.dart';
import 'package:d_sdk/core/config/server_config.dart';

abstract class AuthManager {
  Stream<AuthState> get authStateChanges;

  Future<void> login(String email, String password, ServerConfig server);

  Future<void> logout(
      {LogoutStrategy strategy = LogoutStrategy.deleteLocalData});

  /// For multi-user switcher UI
  Future<List<CachedUser>> getCachedUsers();
}

/// Logout strategies
enum LogoutStrategy {
  deleteLocalData,
  keepLocalData,
  archiveAndDelete,
}
