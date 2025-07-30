import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/datasource/util/field_value.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class SubmissionSummary with EquatableMixin {
  SubmissionSummary(
      {required this.id,
      this.assignment,
      required this.orgUnit,
      required this.form,
      required this.formVersionId,
      required this.versionNumber,
      required this.syncStatus,
      this.progress,
      this.submittedAt,
      this.createdDate,
      this.lastModifiedDate,
      this.isToUpdate = false,
      IMap<String, FieldValue>? formData})
      : this.formData = formData ?? const IMapConst({});

  final String id;
  final String? assignment;
  final IdentifiableModel form;
  final IdentifiableModel orgUnit;
  final String formVersionId;
  final int versionNumber;
  final AssignmentStatus? progress;
  final InstanceSyncStatus syncStatus;
  final DateTime? submittedAt;
  final IMap<String, FieldValue> formData;
  final DateTime? createdDate;
  final DateTime? lastModifiedDate;
  final bool isToUpdate;

  SubmissionSummary copyWith({
    String? id,
    IdentifiableModel? form,
    IdentifiableModel? orgUnit,
    String? formVersionId,
    int? versionNumber,
    AssignmentStatus? progress,
    InstanceSyncStatus? syncStatus,
    DateTime? submittedAt,
    IMap<String, FieldValue>? formDate,
    DateTime? createdDate,
    DateTime? lastModifiedDate,
    bool? isToUpdate,
    String? assignment,
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
      formData: formDate ?? this.formData,
      createdDate: createdDate ?? this.createdDate,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      isToUpdate: isToUpdate ?? this.isToUpdate,
      assignment: assignment ?? this.assignment,
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
        syncStatus,
        formData,
        createdDate,
        lastModifiedDate,
        isToUpdate,
        assignment
      ];
}
