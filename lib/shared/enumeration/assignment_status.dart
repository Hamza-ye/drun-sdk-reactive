enum AssignmentStatus {
  NOT_STARTED,
  IN_PROGRESS, // Active
  DONE, // Completed
  RESCHEDULED,
  MERGED,
  REASSIGNED,
  CANCELLED;

  bool isDone() {
    return this == AssignmentStatus.DONE;
  }

  bool isInProgress() {
    return this == AssignmentStatus.IN_PROGRESS;
  }

  bool isNotStarted() {
    return this == AssignmentStatus.NOT_STARTED;
  }

  bool isRescheduled() {
    return this == AssignmentStatus.RESCHEDULED;
  }

  bool isMerged() {
    return this == AssignmentStatus.MERGED;
  }

  bool isReassigned() {
    return this == AssignmentStatus.REASSIGNED;
  }

  bool isCancelled() {
    return this == AssignmentStatus.CANCELLED;
  }

  // static AssignmentStatus? fromString(String? status) {
  //   return AssignmentStatus.values
  //       .firstOrNullWhere((e) => e.toString().split('.').last == status);
  // }

  static AssignmentStatus? getType(String? value) {
    switch (value?.toLowerCase()) {
      case 'not_started':
        return AssignmentStatus.NOT_STARTED;
      case 'in_progress':
        return AssignmentStatus.IN_PROGRESS;
      case 'done':
        return AssignmentStatus.DONE;
      case 'rescheduled':
        return AssignmentStatus.RESCHEDULED;
      case 'merged':
        return AssignmentStatus.MERGED;
      case 'reassigned':
        return AssignmentStatus.REASSIGNED;
      case 'cancelled':
        return AssignmentStatus.CANCELLED;
      default:
        return null;
    }
  }
}
