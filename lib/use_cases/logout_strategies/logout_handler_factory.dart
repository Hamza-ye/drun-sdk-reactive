

// @Injectable(scope: SessionContext.activeSessionScope)
class LogoutHandlerFactory {
  // LogoutHandlerFactory({
  //   @factoryParam LogoutStrategy? strategy,
  // }) : _strategy = strategy;
  //
  // final LogoutStrategy? _strategy;
  //
  // static LogoutHandler _getLogoutHandler(LogoutStrategy? strategy) {
  //   return switch (strategy) {
  //     LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(),
  //     LogoutStrategy.archiveAndDelete => BackupDataHandler(),
  //     _ => KeepLocalDataHandler(),
  //   };
  // }

  // Future<void> handle() async {
  //   // await _userSessionRepository.deactivateSession();
  //   return _getLogoutHandler(_strategy).handle();
  // }
}
