import 'package:d_sdk/use_cases/sync/model/sync_status.dart';

/// Overall sync progress state
class SyncProgress {
  final SyncStatus status;
  final double percentage;
  final Object? error;

  const SyncProgress._({
    required this.status,
    this.percentage = 0,
    this.error,
  });

  // Factory constructors
  factory SyncProgress.idle() => const SyncProgress._(status: SyncStatus.idle);

  factory SyncProgress.starting() =>
      const SyncProgress._(status: SyncStatus.starting);

  factory SyncProgress.running(double percentage) =>
      SyncProgress._(status: SyncStatus.running, percentage: percentage);

  factory SyncProgress.complete() =>
      const SyncProgress._(status: SyncStatus.complete, percentage: 100);

  factory SyncProgress.failed(Object error) =>
      SyncProgress._(status: SyncStatus.failed, error: error);
}
