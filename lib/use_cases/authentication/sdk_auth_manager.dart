import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/auth/authentication_params.dart';
import 'package:d_sdk/core/auth/authentication_service.dart';
import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/core/exception/exception.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/use_cases/authentication/auth_scope_initialization.dart';
import 'package:d_sdk/use_cases/authentication/logout_clean_up.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

@LazySingleton(as: AuthManager)
class SdkAuthManager implements AuthManager {
  final AuthenticationService _authenticationService;
  final UserSessionRepository _userSessionRepository;
  final AuthScopeInitializer _scopeInitializer;

  SdkAuthManager(
      {required UserSessionRepository userSessionRepository,
      required AuthenticationService authenticationService,
      required AuthScopeInitializer scopeInitializer,
      required LogoutCleanUp logoutCleanUp})
      : _authenticationService = authenticationService,
        _userSessionRepository = userSessionRepository,
        _scopeInitializer = scopeInitializer;

  @override
  Future<bool> isAuthenticated() async {
    final currentCachedUser = await _userSessionRepository.loadCurrentUser();
    return currentCachedUser != null;
  }

  @override
  Future<Result<User, AuthFailure>> authenticate(
      {required String username,
      required String password,
      required ServerConfig server}) async {
    try {
      // Authenticate with server
      final User authUserData = await _authenticationService
          .auth(AuthenticationParams(username: username, password: password));

      return Success(authUserData);
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
    return _scopeInitializer.popScope();
  }
}
