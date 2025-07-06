import 'package:d_sdk/database/shared/submission_status.dart';
import 'package:equatable/equatable.dart';

class SubmissionsFilter with EquatableMixin {
  const SubmissionsFilter({
    this.searchTerm = '',
    this.assignment,
    this.team,
    this.includeDeleted = false,
    this.syncState,
  });

  final String searchTerm;
  final String? assignment;
  final String? team;
  final bool includeDeleted;
  final InstanceSyncStatus? syncState;

  SubmissionsFilter copyWith({
    String? searchTerm,
    String? assignment,
    String? team,
    InstanceSyncStatus? syncState,
    bool? includeDeleted,
  }) {
    return SubmissionsFilter(
      searchTerm: searchTerm ?? this.searchTerm,
      assignment: assignment ?? this.assignment,
      team: team ?? this.team,
      syncState: syncState ?? this.syncState,
      includeDeleted: includeDeleted ?? this.includeDeleted,
    );
  }

  @override
  List<Object?> get props =>
      [searchTerm, assignment, team, syncState, includeDeleted];
}
