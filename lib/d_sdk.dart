import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/cache/cache_storage.dart';
import 'package:d_sdk/core/network/connectivy_service.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart';
import 'package:d_sdk/di/injection.dart';

class DSdk {
  // database
  static DbManager get dbManager => rSdkLocator<DbManager>();

  static AppDatabase get db => dbManager.getActiveDb()!;

  static DataSubmissionDatasource get dataSubmissionDataSource =>
      rSdkLocator<DataSubmissionDatasource>();

  // services
  static AuthManager get authManager => rSdkLocator<AuthManager>();

  static ConnectivityService get connectivity =>
      rSdkLocator<ConnectivityService>();
  static CacheStorage cacheStorage = rSdkLocator<CacheStorage>();
}
