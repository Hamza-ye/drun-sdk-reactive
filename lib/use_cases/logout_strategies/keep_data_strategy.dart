import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';

class KeepLocalDataHandler implements LogoutHandler {
  final SessionStorageManager _sessionStorageManager;

  KeepLocalDataHandler(this._sessionStorageManager);

  // Just clear auth tokens, keep DB
  Future<void> handle(String userId, String server) async {
    // 2. Clear secure storage
    _sessionStorageManager.removeCurrentCachedUser();
  }
}
