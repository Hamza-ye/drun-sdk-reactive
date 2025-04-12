import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutCleanUp {
  final UserSessionRepository _userSessionRepository;

  LogoutCleanUp(this._userSessionRepository);

  Future<void> logoutCleanUp(
      [LogoutStrategy strategy = LogoutStrategy.keepLocalData]) async {
    final cachedUser = await _userSessionRepository.loadCurrentUser();
    // final handler = _getLogoutHandler(strategy);
    if (cachedUser != null) {
      await _userSessionRepository.removeCurrentCachedUser();
      // await handler.handle(cachedUser.username, cachedUser.baseUrl);
    }
  }

  // LogoutHandler _getLogoutHandler(LogoutStrategy strategy) {
  //   return switch (strategy) {
  //     LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(),
  //     LogoutStrategy.keepLocalData => KeepLocalDataHandler(),
  //     LogoutStrategy.archiveAndDelete => BackupDataHandler(),
  //   };
  // }
}
