import 'package:d_sdk/core/cache/cache.dart';
import 'package:d_sdk/use_cases/sync/sync_interval.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SyncMetadataRepository {
  /// cache keys for storing syncing metadata
  static const String LAST_SYNC_TIME = 'last_sync_time';
  static const String SYNC_INTERVAL = 'sync_interval';
  static const String SYNC_DONE = 'sync_interval';

  /// local cache will be used to store syncing metadata
  final CacheStorage _cacheStorage;

  SyncMetadataRepository({required CacheStorage cacheStorage})
      : _cacheStorage = cacheStorage;

  Future<void> updateLastSync() {
    return _cacheStorage.save(
        key: LAST_SYNC_TIME, value: '${DateTime.now().millisecondsSinceEpoch}');
  }

  Future<int> getLastSync() async {
    final lastSyncTime = await _cacheStorage.fetch(LAST_SYNC_TIME);
    return int.tryParse(lastSyncTime) ?? 0;
  }

  Future<SyncInterval> getSyncInterval() async {
    final intervalMs = (await _cacheStorage.fetch(SYNC_INTERVAL)) ??
        SyncInterval.biweekly.milliseconds;
    return SyncInterval.values.firstWhere(
        (interval) => interval.milliseconds == intervalMs,
        orElse: () => SyncInterval.biweekly);
  }

  Future<bool> isInitialSyncDone() async {
    return bool.tryParse(await _cacheStorage.fetch(SYNC_DONE)) ?? false;
  }
}
