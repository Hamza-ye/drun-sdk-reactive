import 'package:d2_remote/modules/activity_management/assignment/queries/assignment.query.dart';
import 'package:d2_remote/modules/data_run/assignment/queries/d_assignment.query.dart';

class DAssignmentModule {
  static createTables() async {
    await AssignmentQuery().createTable();
  }

  DAssignmentQuery get assignment => DAssignmentQuery();
}
