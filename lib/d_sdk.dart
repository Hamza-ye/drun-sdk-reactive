library d_sdk;

import 'package:d_sdk/auth/auth_manager.dart';
import 'package:d_sdk/auth/authenticated_user_detail.dart';
import 'package:d_sdk/auth/authentication_service.dart';
import 'package:d_sdk/core/cache/cache_storage.dart';
import 'package:d_sdk/core/network/connectivy_service.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:d_sdk/use_cases/authentication/authentication.dart';

class DSdk {
  // database
  static DbManager get dbManager => rSdkLocator<DbManager>();

  static AppDatabase get db => dbManager.db;

  static DataSubmissionDatasource get dataSubmissionDataSource =>
      rSdkLocator<DataSubmissionDatasource>();

  // services
  static AuthManager get authManager => rSdkLocator<AuthManager>();

  static AuthenticationService get authService =>
      rSdkLocator<AuthenticationService>();

  // static AuthScopeInitializer get authScopeInitializer =>
  //     rSdkLocator<AuthScopeInitializer>();

  static AuthUserData get currentAuthUser => rSdkLocator<AuthUserData>();

  static UserSessionRepository get userSessionRepository =>
      rSdkLocator<UserSessionRepository>();

  static ConnectivityService get connectivity =>
      rSdkLocator<ConnectivityService>();
  static CacheStorage cacheStorage = rSdkLocator<CacheStorage>();
}
