
abstract class CacheStorageAdapter {
  Future<dynamic> fetch(String key);

  Future<void> delete(String key);

  Future<void> save({required String key, required String value});
}
