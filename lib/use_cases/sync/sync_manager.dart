import 'dart:async';

import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/model/sync_progress_event.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SyncManager {
  SyncManager({required this.remoteDataSources});

  final Iterable<GenericDataSource> remoteDataSources;

  /// A stream controller for progress events.
  final StreamController<SyncProgressEvent> _progressController =
      StreamController.broadcast();

  /// Expose the progress stream so the UI can subscribe.
  Stream<SyncProgressEvent> get progressStream => _progressController.stream;

  Future<void> syncAll() async {
    final totalResources = remoteDataSources.length;
    int resourceIndex = 0;

    _progressController.add(SyncProgressEvent(
      syncProgressState: SyncProgressState.ENQUEUED,
      message: 'Starting download of $totalResources resources...',
      percentage: 0,
    ));

    for (var remoteDataSource in remoteDataSources) {
      resourceIndex++;

      // Calculate the base percentage completed before this resource.
      final basePercentage = ((resourceIndex - 1) / totalResources) * 100;

      _progressController.add(SyncProgressEvent(
        syncProgressState: SyncProgressState.RUNNING,
        message: 'Starting sync for ${remoteDataSource.apiResourceName}...',
        percentage: basePercentage,
        completed: false,
      ));

      try {
        final onlineData = await remoteDataSource.syncWithRemote(
          progressCallback: (resourceProgress) {
            // Compute overall progress: add a fraction of this resource's progress.
            final overallProgress = basePercentage +
                (resourceProgress / 100) * (100 / totalResources);
            _progressController.add(SyncProgressEvent(
              syncProgressState: SyncProgressState.SUCCEEDED,
              message: 'Syncing ${remoteDataSource.apiResourceName}...',
              percentage: overallProgress,
              completed: false,
            ));
          },
        );

        final overallProgress = (resourceIndex / totalResources) * 100;
        _progressController.add(SyncProgressEvent(
          syncProgressState: SyncProgressState.ENQUEUED,
          message:
              '${onlineData.length} records downloaded from ${remoteDataSource.apiResourceName}',
          percentage: overallProgress,
          completed: true,
        ));
      } catch (e) {
        final overallProgress = (resourceIndex / totalResources) * 100;
        _progressController.add(SyncProgressEvent(
          syncProgressState: SyncProgressState.FAILED,
          message: 'Error syncing ${remoteDataSource.apiResourceName}: $e',
          percentage: overallProgress,
          completed: false,
        ));
        logError('Error syncing ${remoteDataSource.apiResourceName}: $e');
      }
    }
  }

  void dispose() {
    _progressController.close();
  }
}
