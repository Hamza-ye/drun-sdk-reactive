import 'package:d_sdk/core/config/server_config.dart';

class AuthState {
  final String? userId;
  final String? authToken;
  final ServerConfig? activeServer;
  final bool isLoggedIn;

  AuthState({
    this.userId,
    this.authToken,
    this.activeServer,
    this.isLoggedIn = false,
  });
}
