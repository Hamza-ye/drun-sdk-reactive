enum SyncProgressState {
  ENQUEUED,
  RUNNING,
  SUCCEEDED,
  FAILED,
  CANCELLED;

  bool isFinished() {
    return this == SUCCEEDED || this == FAILED || this == CANCELLED;
  }
}

class SyncProgressEvent {
  final String resourceName;
  final SyncProgressState syncProgressState;
  final String message;
  final double percentage;
  final bool completed;

  const SyncProgressEvent({
    required this.resourceName,
    required this.syncProgressState,
    required this.message,
    required this.percentage,
    this.completed = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'resourceName': this.resourceName,
      'syncProgressState': this.syncProgressState.name,
      'percentage': this.percentage,
      'completed': this.completed,
    };
  }
}
