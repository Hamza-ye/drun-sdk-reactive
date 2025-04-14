import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart';
import 'package:injectable/injectable.dart';

@Injectable()
abstract class LogoutHandler {
  Future<void> handle();

  @factoryMethod
  static Future<LogoutHandler> getLogoutHandler(
      {@factoryParam LogoutStrategy? strategy,
      required UserSessionRepository userSessionRepository}) async {
    await userSessionRepository.logoutCurrentAuthCachedUser();
    return switch (strategy) {
      LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(),
      LogoutStrategy.archiveAndDelete => BackupDataHandler(),
      _ => KeepLocalDataHandler(),
    };
  }
}
