// import 'package:d_sdk/remote/dee/sync_options.dart';
//
// class SyncService {
//   final Map<Type, SyncRepository> _repositories;
//   final Map<Type, Repository> repositories;
//   final Map<Type, RemoteDataSource> remoteDataSources;
//
//   final ConnectivityService _connectivity;
//   final SyncLogger _logger;
//
//
//
//   Future<SyncResult> performSync(SyncConfig config) async {
//     if (!await _connectivity.isOnline) {
//       throw SyncException('Offline - cannot sync');
//     }
//
//     final results = await Future.wait(
//         _repositories.values.map((repo) => _syncRepository(repo, config))
//     );
//
//     return SyncResult(
//       totalSynced: results.fold(0, (sum, r) => sum + r.syncedCount),
//       errors: results.expand((r) => r.errors).toList(),
//     );
//   }
//
//   Future<RepoSyncResult> _syncRepository(
//       SyncRepository repo,
//       SyncConfig config
//       ) async {
//     try {
//       final count = await repo.syncWithRemote(
//           SyncOptions(
//             lastSync: config.lastSync,
//             conflictResolution: config.conflictStrategy,
//           )
//       );
//       return RepoSyncResult(syncedCount: count);
//     } catch (e, stack) {
//       _logger.logError(e, stack);
//       return RepoSyncResult(errors: [SyncError(repo.runtimeType, e)]);
//     }
//   }
// }