import 'dart:async';

import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/model/sync_progress_event.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:injectable/injectable.dart';

typedef ProgressEventCallback = void Function(SyncProgressEvent progressEvent);

@LazySingleton()
class SyncManager {
  SyncManager({required this.remoteDataSources});

  Future<void> call({ProgressEventCallback? progressCallback}) {
    return syncAll(progressCallback);
  }

  final Iterable<BaseDataSource> remoteDataSources;

  /// A stream controller for progress events.
  final StreamController<SyncProgressEvent> _progressController =
      StreamController.broadcast();

  /// Expose the progress stream so the UI can subscribe.
  Stream<SyncProgressEvent> get progressStream => _progressController.stream;

  Future<void> syncAll(ProgressEventCallback? progressCallback) async {
    final totalResources = remoteDataSources.length;
    int resourceIndex = 0;

    SyncProgressEvent event = SyncProgressEvent(
      resourceName: '$totalResources resources',
      syncProgressState: SyncProgressState.ENQUEUED,
      message: 'Starting download...',
      percentage: 0,
    );

    for (var remoteDataSource in remoteDataSources) {
      resourceIndex++;

      // Calculate the base percentage completed before this resource.
      final basePercentage = ((resourceIndex - 1) / totalResources) * 100;

      event = SyncProgressEvent(
        resourceName: remoteDataSource.apiResourceName,
        syncProgressState: SyncProgressState.RUNNING,
        message: 'Starting sync for ${remoteDataSource.apiResourceName}...',
        percentage: basePercentage,
        completed: false,
      );
      _progressController.add(event);
      progressCallback?.call(event);

      try {
        final onlineData = await remoteDataSource.syncWithRemote(
          progressCallback: (resourceProgress) {
            // Compute overall progress: add a fraction of this resource's progress.
            final overallProgress = basePercentage +
                (resourceProgress / 100) * (100 / totalResources);
            event = SyncProgressEvent(
              resourceName: remoteDataSource.apiResourceName,
              syncProgressState: SyncProgressState.SUCCEEDED,
              message: '✔',
              percentage: overallProgress,
              completed: false,
            );
            _progressController.add(event);
            progressCallback?.call(event);
          },
        );

        final overallProgress = (resourceIndex / totalResources) * 100;
        event = SyncProgressEvent(
          resourceName: remoteDataSource.apiResourceName,
          syncProgressState: SyncProgressState.ENQUEUED,
          message: '${onlineData.length} records downloaded',
          percentage: overallProgress,
          completed: true,
        );
        _progressController.add(event);
        progressCallback?.call(event);
      } catch (e) {
        final overallProgress = (resourceIndex / totalResources) * 100;
        event = SyncProgressEvent(
          resourceName: remoteDataSource.apiResourceName,
          syncProgressState: SyncProgressState.FAILED,
          message: '❌ Sync error: $e',
          percentage: overallProgress,
          completed: false,
        );
        _progressController.add(event);
        progressCallback?.call(event);
        logError('Error syncing ${remoteDataSource.apiResourceName}: $e');
      }
    }
  }

  @disposeMethod
  void dispose() {
    _progressController.close();
  }
}
