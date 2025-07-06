import 'package:d_sdk/database/shared/shared.dart';
import 'package:equatable/equatable.dart';

class SubmissionSummary with EquatableMixin {
  SubmissionSummary({
    required this.id,
    required this.orgUnit,
    required this.form,
    required this.formVersionId,
    required this.versionNumber,
    required this.syncStatus,
    this.progress,
    this.submittedAt,
  });

  final String id;
  final IdentifiableModel form;
  final IdentifiableModel orgUnit;
  final String formVersionId;
  final int versionNumber;
  final AssignmentStatus? progress;
  final InstanceSyncStatus syncStatus;
  final DateTime? submittedAt;

  SubmissionSummary copyWith({
    String? id,
    IdentifiableModel? form,
    IdentifiableModel? orgUnit,
    String? formVersionId,
    int? versionNumber,
    AssignmentStatus? progress,
    InstanceSyncStatus? syncStatus,
    DateTime? submittedAt,
  }) {
    return SubmissionSummary(
      id: id ?? this.id,
      form: form ?? this.form,
      orgUnit: orgUnit ?? this.orgUnit,
      formVersionId: formVersionId ?? this.formVersionId,
      versionNumber: versionNumber ?? this.versionNumber,
      progress: progress ?? this.progress,
      syncStatus: syncStatus ?? this.syncStatus,
      submittedAt: submittedAt ?? this.submittedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        form,
        orgUnit,
        formVersionId,
        versionNumber,
        progress,
        submittedAt,
        syncStatus
      ];
}
