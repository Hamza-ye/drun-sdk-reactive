class SyncProgressEvent {
  final String resourceName;
  final String message;
  final int percentage;
  final bool completed;

  const SyncProgressEvent({
    required this.resourceName,
    required this.message,
    required this.percentage,
    this.completed = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'resourceName': this.resourceName,
      'percentage': this.percentage,
      'completed': this.completed,
    };
  }
}
