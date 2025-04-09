import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/auth/authenticated_user.dart';
import 'package:d_sdk/core/auth/authentication_params.dart';
import 'package:d_sdk/core/auth/authentication_service.dart';
import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

@LazySingleton(as: AuthManager)
class SdkAuthManager implements AuthManager {
  final AuthenticationService _authenticationService;
  final UserSessionRepository _userSessionRepository;

  // BehaviorSubject holds the latest user state and replays it to new subscribers.
  // final BehaviorSubject<User?> _userSubject = BehaviorSubject<User?>();

  // Expose the stream to subscribers.
  // Stream<User?> get userStream => _userSubject.stream;

  // Access current user directly.
  // @override
  // User? get currentUser => _userSubject.value;

  SdkAuthManager({
    required UserSessionRepository userSessionRepository,
    required AuthenticationService authenticationService,
  })  : _authenticationService = authenticationService,
        _userSessionRepository = userSessionRepository;

  @override
  Future<bool> isLoggedIn() async {
    final currentCachedUser = await _userSessionRepository.loadCurrentUser();
    // if (currentUser != null && currentCachedUser == null) {
    //   _userSubject.add(null);
    // }
    return currentCachedUser != null;
  }

  @override
  Future<Result<AuthState, AuthFailure>> authenticate(
      {required String username,
      required String password,
      required ServerConfig server}) async {
    try {
      // Authenticate with server
      final User authResult = await _authenticationService
          .auth(AuthenticationParams(username: username, password: password));

      final User authUser = authResult;

      // // Initialize user-specific database
      // await setupSdkLocator(
      //     username: authUser.username, baseUrl: server.baseUrl);
      //
      // final db = rSdkLocator<DbManager>().getActiveDb();
      //
      // await db.into(db.users).insert(authUser);
      //
      // // store status as a cached user info
      // await _sessionStorageManager.storeCurrentUser(
      //     CachedUser(username: authUser.username, baseUrl: server.baseUrl));
      //
      // _userSubject.add(authUser);

      return Success(AuthState(
        user: authUser,
        activeServerUrl: server.baseUrl,
        loggedIn: true,
      ));
    } on AuthFailure catch (e) {
      logError(e.message, data: e.toMap());
      return Error(e);
    } catch (e) {
      return Error(AuthFailure(e.toString(),
          errorCode: DRunErrorCode.unexpected, cause: e));
    }
  }

  @override
  Future<void> logout(
      {LogoutStrategy strategy = LogoutStrategy.keepLocalData}) async {
    await _processCachedAuthStatus(strategy: strategy);

    // Emit a null value to indicate no user is logged in.
    // _userSubject.add(null);
  }

  Future<void> _processCachedAuthStatus(
      {LogoutStrategy strategy = LogoutStrategy.keepLocalData}) async {
    final cachedUser = await _userSessionRepository.loadCurrentUser();

    // 1. Execute logout strategy
    final handler = _getLogoutHandler(strategy);
    if (cachedUser != null) {
      await _userSessionRepository.removeCurrentCachedUser();
      await handler.handle(cachedUser.username, cachedUser.baseUrl);
      // await rSdkLocator.reset();
    }
  }

  LogoutHandler _getLogoutHandler(LogoutStrategy strategy) {
    final _dbManager = rSdkLocator<DbManager>();
    return switch (strategy) {
      LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(_dbManager),
      LogoutStrategy.keepLocalData => KeepLocalDataHandler(),
      LogoutStrategy.archiveAndDelete => BackupDataHandler(_dbManager),
    };
  }

  // @override
  // Future<void> switchUser(CachedUser user, ServerConfig server) async {
  //   final cachedUsers = await _sessionStorageManager.getCachedUsers();
  //   final cachedUser =
  //       cachedUsers.firstOrNullWhere((u) => user.username == u.username);
  //   if (cachedUser == null)
  //     throw DError(
  //         errorCode: DRunErrorCode.noLoggedInUser,
  //         message: 'user ${user.username} is not logged in');
  //
  //   await _dbManager.switchDatabase(
  //     username: user.username,
  //     server: server,
  //   );
  // }

  @override
  Future<User?> getCurrentUser() async {
    final currentCachedUser = await _userSessionRepository.loadCurrentUser();
    User? user;

    if (currentCachedUser != null) {
      final _dbManager = rSdkLocator<DbManager>();
      final db = _dbManager.getActiveDb();
      user = await (db.select(db.users)
            ..where((t) => t.username.equals(currentCachedUser.username)))
          .getSingleOrNull();
    }

    return user;
  }

// @disposeMethod
// @override
// void dispose() {
//   _userSubject.close();
// }
}
