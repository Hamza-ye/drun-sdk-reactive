//
// class SyncManagerWithCallback {
//   final Map<Type, Repository> repositories;
//   final Map<Type, RemoteDataSource> remoteDataSources;
//
//   final Map<Type, DateTime> lastSyncTimes = {};
//
//   SyncManagerWithCallback({
//     required this.repositories,
//     required this.remoteDataSources,
//   });
//
//   Future<void> syncEntity<T>(ProgressCallback progressCallback) async {
//     final Repository<T> repo = repositories[T] as Repository<T>;
//     final RemoteDataSource<T> remoteSource =
//     remoteDataSources[T] as RemoteDataSource<T>;
//
//     final lastSync = lastSyncTimes[T] ?? DateTime.fromMillisecondsSinceEpoch(0);
//     final params = {'modifiedAfter': lastSync.toIso8601String()};
//
//     try {
//       progressCallback(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: 'Starting download...',
//         percentage: 0,
//       ));
//
//       final List<T> onlineData = await remoteSource.fetchOnline(params);
//
//       progressCallback(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: '${onlineData.length} records downloaded',
//         percentage: 50,
//       ));
//
//       await repo.saveMany(onlineData);
//
//       lastSyncTimes[T] = DateTime.now().toUtc();
//       progressCallback(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: 'Sync complete',
//         percentage: 100,
//         completed: true,
//       ));
//     } catch (e) {
//       progressCallback(SyncProgressEvent(
//         resourceName: T.toString(),
//         message: 'Error syncing: $e',
//         percentage: 0,
//       ));
//     }
//   }
// }
