import 'package:d_sdk/database/shared/d_identifiable_model.dart';
import 'package:equatable/equatable.dart';

class ActivityModel extends IdentifiableModel with EquatableMixin {
  ActivityModel({
    required super.id,
    required super.name,
    this.managedTeams = 0,
    this.assignedAssignments = 0,
    this.managedAssignments = 0,
    this.assignedTeam,
    this.startDate,
    this.endDate,
  });

  final int managedTeams;

  final IdentifiableModel? assignedTeam;
  final DateTime? startDate;
  final DateTime? endDate;
  final int assignedAssignments;
  final int managedAssignments;

  @override
  List<Object?> get props =>
      [id, managedTeams, assignedTeam, assignedAssignments, managedAssignments];
}
