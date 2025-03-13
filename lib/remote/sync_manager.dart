// import 'dart:async';
//
// import 'package:d_sdk/core/sync/model/sync_progress_event.dart';
//
// class SyncManager {
//   final Map<Type, Repository> repositories;
//   final Map<Type, RemoteDataSource> remoteDataSources;
//
//   // A stream controller for progress events.
//   final StreamController<SyncProgressEvent> _progressController =
//   StreamController.broadcast();
//
//   // Expose the progress stream so the UI can subscribe.
//   Stream<SyncProgressEvent> get progressStream => _progressController.stream;
//
//   // Optionally track last sync times per entity.
//   final Map<Type, DateTime> lastSyncTimes = {};
//
//   SyncManager({
//     required this.repositories,
//     required this.remoteDataSources,
//   });
//
//   /// Sync a specific entity type T with granular progress.
//   Future<void> syncEntity<T>() async {
//     final Repository<T> repo = repositories[T] as Repository<T>;
//     final RemoteDataSource<T> remoteSource =
//     remoteDataSources[T] as RemoteDataSource<T>;
//
//     final lastSync = lastSyncTimes[T] ?? DateTime.fromMillisecondsSinceEpoch(0);
//     final params = {'modifiedAfter': lastSync.toIso8601String()};
//
//     try {
//       // Emit start progress.
//       _progressController.add(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: 'Starting download...',
//         percentage: 0,
//       ));
//
//       // Fetch remote records (you can also use Dio's progress callback here)
//       final List<T> onlineData = await remoteSource.fetchOnline(params);
//
//       // Intermediate progress: data downloaded.
//       _progressController.add(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: '${onlineData.length} records downloaded',
//         percentage: 50,
//       ));
//
//       // Save data locally.
//       await repo.saveMany(onlineData);
//
//       // Final progress: saving complete.
//       lastSyncTimes[T] = DateTime.now().toUtc();
//       _progressController.add(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: 'Sync complete',
//         percentage: 100,
//         completed: true,
//       ));
//     } catch (e) {
//       _progressController.add(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: 'Error syncing: $e',
//         percentage: 0,
//       ));
//     }
//   }
//
//   /// Sync all registered entities.
//   Future<void> syncAll() async {
//     for (var type in repositories.keys) {
//       await syncEntity<dynamic>();
//     }
//   }
//
//   void dispose() {
//     _progressController.close();
//   }
// }
