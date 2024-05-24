import 'package:d2_remote/modules/activity_management/assignment/queries/assignment.query.dart';

class AssignmentModule {
  static createTables() async {
    await AssignmentQuery().createTable();
  }

  AssignmentQuery get assignment => AssignmentQuery();
}
