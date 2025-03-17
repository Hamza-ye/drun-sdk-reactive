import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';

class KeepLocalDataHandler implements LogoutHandler {
  // Just clear auth tokens, keep DB
  Future<void> handle(String userId, ServerConfig server) async {}
}
