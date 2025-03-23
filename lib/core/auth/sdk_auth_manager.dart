import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/auth/auth_state.dart';
import 'package:d_sdk/core/auth/authentication_params.dart';
import 'package:d_sdk/core/auth/authentication_service.dart';
import 'package:d_sdk/core/auth/cached_user.dart';
import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart';
import 'package:multiple_result/multiple_result.dart';

class SdkAuthManager implements AuthManager {
  final AuthenticationService _authenticationService;
  final SessionStorageManager _storageManager;
  final DbManager _dbManager;

  SdkAuthManager({
    required SessionStorageManager storageManager,
    required DbManager dbManager,
    required AuthenticationService authenticationService,
  })  : _authenticationService = authenticationService,
        _storageManager = storageManager,
        _dbManager = dbManager;

  @override
  Future<bool> isLoggedIn() async {
    final currentUser = await _storageManager.loadCurrentUser();
    return currentUser != null;
  }

  @override
  Future<Result<AuthState, AuthFailure>> authenticate(
      {required String username,
      required String password,
      required ServerConfig server}) async {
    try {
      // 1. Authenticate with server
      final User authResult = await _authenticationService
          .auth(AuthenticationParams(username: username, password: password));

      final User authUser = authResult;

      // 2. Initialize user-specific database
      final db = await _dbManager.connectForUser(
        userName: authUser.username,
        server: server,
      );

      // 3. Track user in local cache
      // 4. Update/Store credentials
      await _storageManager.storeCurrentUser(CachedUser(
          username: authUser.username,
          baseUrl: server.baseUrl,
          environment: server.environment));

      return Success(AuthState(
        username: username,
        activeServerUrl: server.baseUrl,
        isLoggedIn: true,
      ));
    } on AuthFailure catch (e) {
      logError(e.message, data: e.toMap());
      rethrow;
    }
  }

  @override
  Future<void> logout(
      {LogoutStrategy strategy = LogoutStrategy.deleteLocalData}) async {
    final currentState = _authController.value;

    // 1. Execute logout strategy
    final handler = _getLogoutHandler(strategy);
    await handler.handle(currentState.userKey!, currentState.activeServerUrl!);

    // 2. Clear secure storage
    await _storageManager.removeCurrentCachedUser();

    // 3. Update auth state
    _authController.add(AuthState.initial());
  }

  LogoutHandler _getLogoutHandler(LogoutStrategy strategy) {
    return switch (strategy) {
      LogoutStrategy.deleteLocalData => DeleteLocalDataHandler(_dbManager),
      LogoutStrategy.keepLocalData => KeepLocalDataHandler(),
      LogoutStrategy.archiveAndDelete => BackupDataHandler(_dbManager),
    };
  }

  @override
  Future<void> switchUser(CachedUser user, ServerConfig server) async {
    final cachedUsers = await _storageManager.getCachedUsers();
    final cachedUser =
        cachedUsers.firstOrNullWhere((u) => user.username == u.username);
    if (cachedUser == null)
      throw DError(
          errorCode: DRunErrorCode.noLoggedInUser,
          message: 'user ${user.username} is not logged in');

    await _dbManager.connectForUser(
      userName: user.username,
      server: server,
    );
  }
}
