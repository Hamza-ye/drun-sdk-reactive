import 'dart:async';

import 'package:d_sdk/core/auth/authenticated_user_detail.dart';
import 'package:d_sdk/core/auth/user_detail.dart';
import 'package:d_sdk/di/init_authenticated_scope.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:d_sdk/use_cases/authentication/logout_clean_up.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthScopeInitializer {
  final LogoutCleanUp _logoutCleanUp;

  AuthScopeInitializer(this._logoutCleanUp);

  /// [OnInvalidDatabase] for logging out, navigating ...etc on the app layer
  void initScope(UserDetail userDetail) {
    // if (rSdkLocator.currentScopeName != 'authenticated') {
    initAuthScope(rSdkLocator,
        username: userDetail.username, baseUrl: userDetail.baseUrl);
    // }
  }

  Future<void> popScope() async {
    await _logoutCleanUp.logoutCleanUp();
    await rSdkLocator.popScopesTill('authenticated');
    await rSdkLocator.unregister<AuthenticatedUser>();
  }

  void registerAuthUser({required AuthenticatedUser authUser}) {
    // if (!rSdkLocator.isRegistered(instance: authUser)) {
    rSdkLocator.registerLazySingleton<AuthenticatedUser>(() => authUser);
    // }
  }
}
