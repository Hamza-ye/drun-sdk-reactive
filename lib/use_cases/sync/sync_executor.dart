import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/use_cases/sync/sync_progress_notifier.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SyncExecutor {
  SyncExecutor(
      {required List<BaseDataSource> dataSources,
      required SyncProgressNotifier progressNotifier})
      : _dataSources = dataSources,
        _progressNotifier = progressNotifier;

  final List<BaseDataSource> _dataSources;
  final SyncProgressNotifier _progressNotifier;

  Future<void> performSync() async {
    await _progressNotifier.wrapOperation(
      totalResources: _dataSources.length,
      operation: () async {
        for (final source in _dataSources) {
          await _progressNotifier.trackResource(source.apiResourceName, () {
            return source.syncWithRemote();
          });
        }
      },
    );
  }
}
