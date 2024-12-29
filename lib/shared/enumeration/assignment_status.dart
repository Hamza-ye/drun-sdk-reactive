import 'package:d2_remote/core/utilities/list_extensions.dart';

enum AssignmentStatus {
  NOT_STARTED,
  IN_PROGRESS, // Active
  COMPLETED, // Completed
  RESCHEDULED,
  MERGED,
  REASSIGNED,
  CANCELLED;

  bool isCompleted() {
    return this == AssignmentStatus.COMPLETED;
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

  static AssignmentStatus? fromString(String status) {
    return AssignmentStatus.values
        .firstOrNullWhere((e) => e.toString().split('.').last == status);
  }
}
