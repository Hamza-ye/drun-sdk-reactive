library d_sdk;

import 'dart:async';

import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/cache/cache_storage.dart';
import 'package:d_sdk/core/cache/secure_cache_storage_adapter.dart';
import 'package:d_sdk/core/cache/shared_cache_storage_adapter.dart';
import 'package:d_sdk/core/http/http_adapter.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/network/connectivy_service.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart';
import 'package:d_sdk/di/app_environment.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:d_sdk/use_cases/authentication/authentication.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DSdk {
  static SecureStorageAdapter _createSecureCacheStorageAdapter() =>
      SecureStorageAdapter(cacheStorage: FlutterSecureStorage());

  static SharedCacheStorageAdapter _createSharedCacheStorageAdapter(
          SharedPreferences prefs) =>
      SharedCacheStorageAdapter(cacheStorage: prefs);

  static Future<SharedPreferences> get _prefs =>
      SharedPreferences.getInstance();

  // static CacheStorage _cachedStorage() => AppEnvironment.secureCache
  //     ? createSharedCacheStorageAdapter(rSdkLocator<SharedPreferences>())
  //     : createSecureCacheStorageAdapter();

  static Dio _dio() => Dio(
        BaseOptions(
          baseUrl: AppEnvironment.apiBaseUrl,
          sendTimeout: Duration(seconds: AppEnvironment.apiRequestSentTimeout),
        ),
      );

  static Future<void> initialize(
      {required String username, required String baseUrl}) async {
    // if (rSdkLocator.isReadySync<DbManager>()) {
    //   await rSdkLocator<DbManager>().closeDatabase();
    //   rSdkLocator.reset();
    // }

    final prefs = await _prefs;

    rSdkLocator.registerLazySingleton<SharedPreferences>(() => prefs);

    rSdkLocator.registerSingleton<Dio>(_dio());
    rSdkLocator.registerLazySingleton<CacheStorage>(() =>
        AppEnvironment.secureCache
            ? _createSharedCacheStorageAdapter(prefs)
            : _createSecureCacheStorageAdapter());

    rSdkLocator.registerSingleton<HttpClient<dynamic>>(
        HttpAdapter(rSdkLocator<Dio>()),
        instanceName: 'HttpAdapter');
    rSdkLocator.registerSingleton<AuthenticationService>(RemoteAuthentication(
        httpClient:
            rSdkLocator<HttpClient<dynamic>>(instanceName: 'HttpAdapter'),
        authResourceName: '${AppEnvironment.apiPath}/me'));

    // RunDatabaseConfig(databaseName: '${username}_$uri')
    // Reinitialize the SDK with the new user database
    // await setupSdkLocator(username: username, baseUrl: baseUrl);
  }

  // database
  static DbManager get dbManager => rSdkLocator<DbManager>();

  static AppDatabase get db => dbManager.getActiveDb();

  static DataSubmissionDatasource get dataSubmissionDataSource =>
      rSdkLocator<DataSubmissionDatasource>();

  // services
  static AuthManager get authManager => rSdkLocator<AuthManager>();

  static ConnectivityService get connectivity =>
      rSdkLocator<ConnectivityService>();
  static CacheStorage cacheStorage = rSdkLocator<CacheStorage>();
}
