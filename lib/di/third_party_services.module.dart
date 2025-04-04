import 'package:d_sdk/core/cache/cache.dart';
import 'package:d_sdk/core/cache/secure_cache_storage_adapter.dart';
import 'package:d_sdk/core/cache/shared_cache_storage_adapter.dart';
import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ThirdPartyServicesModule {
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
