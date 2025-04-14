import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LogoutHandlerFactory {
  LogoutHandlerFactory({
    @factoryParam LogoutStrategy? strategy,
    required UserSessionRepository userSessionRepository,
  })  : _userSessionRepository = userSessionRepository,
        _strategy = strategy;

  final UserSessionRepository _userSessionRepository;
  final LogoutStrategy? _strategy;

  static LogoutHandler _getLogoutHandler(LogoutStrategy? strategy) {
    return switch (strategy) {
      LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(),
      LogoutStrategy.archiveAndDelete => BackupDataHandler(),
      _ => KeepLocalDataHandler(),
    };
  }

  Future<void> handle() async {
    await _userSessionRepository.logoutCurrentAuthCachedUser();
    return _getLogoutHandler(_strategy).handle();
  }
}
