import 'package:d_sdk/core/network/connectivy_service.dart';
import 'package:d_sdk/use_cases/sync/sync_metadata_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SyncScheduler {
  SyncScheduler(
      {required ConnectivityService connectivity,
      required SyncMetadataRepository metadataRepo})
      : _connectivity = connectivity,
        _metadataRepo = metadataRepo;

  final ConnectivityService _connectivity;
  final SyncMetadataRepository _metadataRepo;

  Future<bool> shouldSync() async {
    if (!await _connectivity.checkInternetConnection()) return false;
    final syncDone = await _metadataRepo.isInitialSyncDone();
    if (!syncDone) return true;
    final lastSync = await _metadataRepo.getLastSync();
    final interval = await _metadataRepo.getSyncInterval();
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    return (currentTime - lastSync) > interval.milliseconds;
  }
}
