// import 'package:d_sdk/use_cases/sync/model/sync_state.dart';
// import 'package:d_sdk/use_cases/sync/model/sync_status.dart';
// import 'package:d_sdk/use_cases/sync/sync_coordinator.dart';
// import 'package:d_sdk/use_cases/sync/sync_progress_notifier.dart';
//
// class SyncStore extends StreamNotifier<SyncState> {
//   final SyncCoordinator coordinator;
//   final SyncProgressNotifier progressNotifier;
//
//   SyncStore(this.coordinator, this.progressNotifier);
//
//   @override
//   Stream<SyncState> build() {
//     return Rx.combineLatest3(
//       progressNotifier.progress,
//       progressNotifier.resourceUpdates,
//       coordinator.watchLastSync(),
//       (progress, resource, lastSync) => SyncState(
//         status: progress.status,
//         percentage: progress.percentage,
//         currentResource: resource,
//         resourceHistory: progressNotifier.resourceHistory,
//         lastSync: lastSync,
//         error: progress.error,
//       ),
//     );
//   }
//
//   Future<void> triggerSync() async {
//     try {
//       state = SyncState(
//         status: SyncStatus.starting,
//         percentage: 0,
//         resourceHistory: [],
//       );
//
//       await coordinator.handleSyncLifecycle();
//     } catch (e) {
//       state = state.copyWith(
//         status: SyncStatus.failed,
//         error: e,
//       );
//     }
//   }
// }
