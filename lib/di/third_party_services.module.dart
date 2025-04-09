import 'package:d_sdk/core/cache/cache.dart';
import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/di/app_environment.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  AppEnvironmentInstance get appEnvironmentInstance => AppEnvironmentInstance(
      envLabel: AppEnvironment.envLabel,
      apiBaseUrl: AppEnvironment.apiBaseUrl,
      apiPath: AppEnvironment.apiPath,
      defaultLocale: AppEnvironment.defaultLocale,
      apiRequestSentTimeout: AppEnvironment.apiRequestSentTimeout,
      secureCache: AppEnvironment.secureCache,
      secureDatabase: AppEnvironment.secureDatabase,
      encryptionKey: AppEnvironment.encryptionKey);

  @lazySingleton
  Dio dio(AppEnvironmentInstance envInstance) => Dio(
        BaseOptions(
          baseUrl: envInstance.apiBaseUrl,
          sendTimeout: Duration(seconds: envInstance.apiRequestSentTimeout),
        ),
      );

  @lazySingleton
  CacheStorage cachedStorage(AppEnvironmentInstance envInstance) =>
      envInstance.secureCache
          ? SharedCacheStorageAdapter(
              cacheStorage: rSdkLocator<SharedPreferences>())
          : SecureStorageAdapter(cacheStorage: FlutterSecureStorage());

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
