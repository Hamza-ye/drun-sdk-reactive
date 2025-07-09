
// @Injectable()
abstract class LogoutHandler {
  Future<void> handle();

  // @factoryMethod
  // static Future<LogoutHandler> getLogoutHandler(
  //     {@factoryParam LogoutStrategy? strategy}) async {
  //   return switch (strategy) {
  //     LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(),
  //     LogoutStrategy.archiveAndDelete => BackupDataHandler(),
  //     _ => KeepLocalDataHandler(),
  //   };
  // }
}
