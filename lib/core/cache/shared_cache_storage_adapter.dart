import 'package:d_sdk/core/cache/cache_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedCacheStorageAdapter implements CacheStorage {
  final SharedPreferences _cacheStorage;

  SharedCacheStorageAdapter({required SharedPreferences cacheStorage})
      : _cacheStorage = cacheStorage;

  @override
  Future<void> save({required String key, required String value}) async {
    await _cacheStorage.setString(key, value);
  }

  @override
  Future<String?> fetch(String key) async {
    return await _cacheStorage.getString(key);
  }

  @override
  Future<void> delete(String key) async {
    await _cacheStorage.remove(key);
  }
}
