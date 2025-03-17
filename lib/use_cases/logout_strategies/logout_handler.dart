import 'package:d_sdk/core/config/server_config.dart';

abstract class LogoutHandler {
  Future<void> handle(String username, ServerConfig server);
}
