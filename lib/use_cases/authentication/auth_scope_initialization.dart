// import 'dart:async';
//
// import 'package:d_sdk/auth/authenticated_user_detail.dart';
// import 'package:d_sdk/auth/user_detail.dart';
// import 'package:d_sdk/di/init_active_session_scope.dart';
// import 'package:d_sdk/di/injection.dart';
// import 'package:d_sdk/use_cases/authentication/logout_clean_up.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class AuthScopeInitializer {
//
//   AuthScopeInitializer();
//
//   /// [OnInvalidDatabase] for logging out, navigating ...etc on the app layer
//   void initScope(UserDetail userDetail) {
//     // if (rSdkLocator.currentScopeName != 'authenticated') {
//     initAuthScope(rSdkLocator,
//         username: userDetail.username, baseUrl: userDetail.baseUrl);
//     // }
//   }
//
//   Future<void> popScope() async {
//     await _logoutCleanUp.logoutCleanUp();
//     await rSdkLocator.popScopesTill('authenticated');
//     if (rSdkLocator.isRegistered<AuthUserData>()) {
//       await rSdkLocator.unregister<AuthUserData>();
//     }
//   }
//
//   void registerAuthUser({required AuthUserData authUser}) {
//     // if (!rSdkLocator.isRegistered(instance: authUser)) {
//     rSdkLocator.registerLazySingleton<AuthUserData>(() => authUser);
//     // }
//   }
// }
