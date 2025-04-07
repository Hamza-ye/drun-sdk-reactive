import 'package:d_sdk/use_cases/sync/model/resource_progress.dart';
import 'package:d_sdk/use_cases/sync/model/sync_status.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class SyncState with EquatableMixin {
  final double percentage;
  final SyncStatus status;
  final ResourceProgress? currentResource;
  final IList<ResourceProgress> resourceHistory;
  final DateTime? lastSync;
  final Object? error;

  SyncState({
    this.percentage = 0,
    this.status = SyncStatus.idle,
    this.currentResource,
    Iterable<ResourceProgress>? resourceHistory,
    this.lastSync,
    this.error,
  }) : this.resourceHistory = IList.orNull(resourceHistory) ?? IList();

  SyncState copyWith({
    double? percentage,
    SyncStatus? status,
    ResourceProgress? currentResource,
    Iterable<ResourceProgress>? resourceHistory,
    DateTime? lastSync,
    Object? error,
  }) {
    return SyncState(
      percentage: percentage ?? this.percentage,
      status: status ?? this.status,
      currentResource: currentResource ?? this.currentResource,
      resourceHistory: resourceHistory ?? this.resourceHistory,
      lastSync: lastSync ?? this.lastSync,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props =>
      [percentage, status, currentResource, resourceHistory, lastSync, error];
}
