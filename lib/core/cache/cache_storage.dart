import 'package:d_sdk/core/cache/cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheStorage {
  final SharedPreferences _prefs;

  CacheStorage({required SharedPreferences prefs}) : _prefs = prefs;

  String? getCurrentDbName() {
    return _prefs.getString(CacheKeys.cachedUsersKey);
  }

  Future<bool> removeCurrentDbFileName() {
    return _prefs.remove(CacheKeys.currentDbFileNameKey);
  }

  Future<dynamic> fetch(String key);

  Future<void> delete(String key);

  Future<void> save({required String key, required String value});
}
