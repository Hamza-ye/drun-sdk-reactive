import 'package:d_sdk/database/shared/shared.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class AssignmentModel with EquatableMixin {
  AssignmentModel({
    required this.id,
    this.activity,
    required this.orgUnit,
    required this.team,
    required this.status,
    this.startDay,
    this.startDate,
    this.dueDate,
    this.rescheduledDate,
    // this.allocatedResources = const {},
    // this.reportedResources = const {},
    // this.forms = const [],
  });

  /// assignment

  final String id;

  final IdentifiableModel? activity;
  final IdentifiableModel team;
  final IdentifiableModel orgUnit;
  final AssignmentStatus status;
  final int? startDay;
  final DateTime? startDate;
  final DateTime? dueDate;
  final DateTime? rescheduledDate;

  // final List<String> forms;

  // final Map<String, dynamic> allocatedResources; // E.g., ITNs, Population
  // final Map<String, dynamic> reportedResources; // E.g., ITNs, Population

  AssignmentModel copyWith({
    String? id,
    IdentifiableModel? activity,
    IdentifiableModel? orgUnit,
    IdentifiableModel? team,
    AssignmentStatus? status,
    int? startDay,
    DateTime? startDate,
    DateTime? dueDate,
    DateTime? rescheduledDate,
    // List<String>? forms,
    // Map<String, int>? allocatedResources,
    // Map<String, int>? reportedResources,
  }) {
    return AssignmentModel(
      id: id ?? this.id,
      activity: activity ?? this.activity,
      orgUnit: orgUnit ?? this.orgUnit,
      team: team ?? this.team,
      status: status ?? this.status,
      startDay: startDay ?? this.startDay,
      startDate: startDate ?? this.startDate,
      dueDate: dueDate ?? this.dueDate,
      rescheduledDate: rescheduledDate ?? this.rescheduledDate,
      // forms: forms ?? this.forms,
      // allocatedResources: allocatedResources ?? this.allocatedResources,
      // reportedResources: reportedResources ?? this.reportedResources,
    );
  }

  static int calculateStartDay(
      String activityStartDate, String assignmentStartDate) {
    final dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    final activityStart = dateFormat.parse(activityStartDate);
    final assignmentStart = dateFormat.parse(assignmentStartDate);

    return assignmentStart.difference(activityStart).inDays + 1;
  }

  static DateTime? calculateAssignmentDate(
      DateTime? activityStartDate, int? startDay) {
    // final DateTime? activityStart = DateTime.tryParse(
    //     DateHelper.fromDbUtcToUiLocalFormat(activityStartDate));
    return activityStartDate != null
        ? activityStartDate.toLocal().add(Duration(days: (startDay ?? 1) - 1))
        : null;
  }

  @override
  List<Object?> get props => [
    id,
    activity,
    orgUnit,
    team,
    // scope,
    status,
    startDay,
    startDate,
    dueDate,
    rescheduledDate,
    // forms,
    // allocatedResources,
    // reportedResources
  ];
}
