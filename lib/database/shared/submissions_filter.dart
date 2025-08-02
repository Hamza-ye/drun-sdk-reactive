import 'package:d_sdk/database/shared/submission_status.dart';
import 'package:equatable/equatable.dart';

class SubmissionsFilter with EquatableMixin {
  final String formId;
  final String? assignmentId;
  final int page;
  final int pageSize;
  final bool paged;
  final String? sortColumn;
  final bool sortAscending;
  final String searchTerm;
  final InstanceSyncStatus? syncState;
  final bool includeDeleted;

 const SubmissionsFilter({
    required this.formId,
    this.assignmentId,
    this.page = 0,
    this.pageSize = 10,
    this.paged = true,
    this.sortColumn,
    this.sortAscending = true,
    this.searchTerm = '',
    this.includeDeleted = false,
    this.syncState,
  });

  SubmissionsFilter copyWith({
    String? formId,
    String? assignmentId,
    int? page,
    int? pageSize,
    bool? paged,
    String? sortColumn,
    bool? sortAscending,
    String? searchTerm,
    InstanceSyncStatus? syncState,
    bool? includeDeleted,
  }) {
    return SubmissionsFilter(
      formId: formId ?? this.formId,
      assignmentId: assignmentId ?? this.assignmentId,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      paged: paged ?? this.paged,
      sortColumn: sortColumn ?? this.sortColumn,
      sortAscending: sortAscending ?? this.sortAscending,
      searchTerm: searchTerm ?? this.searchTerm,
      syncState: syncState ?? this.syncState,
      includeDeleted: includeDeleted ?? this.includeDeleted,
    );
  }

  @override
  List<Object?> get props => [
        searchTerm,
        assignmentId,
        syncState,
        includeDeleted,
        page,
        pageSize,
        paged
      ];
}
