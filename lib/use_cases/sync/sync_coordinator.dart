import 'package:d_sdk/use_cases/sync/sync_executor.dart';
import 'package:d_sdk/use_cases/sync/sync_metadata_repository.dart';
import 'package:d_sdk/use_cases/sync/sync_scheduler.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SyncCoordinator {
  final SyncMetadataRepository _metadataRepo;
  final SyncScheduler _scheduler;
  final SyncExecutor _executor;

  SyncCoordinator(this._metadataRepo, this._scheduler, this._executor);

  Future<void> handleSyncLifecycle() async {
    if (await _scheduler.shouldSync()) {
      await _executor.performSync();
      await _metadataRepo.updateLastSync();
    }
  }
}
