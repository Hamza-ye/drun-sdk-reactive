import 'package:d2_remote/modules/metadatarun/assignment/queries/d_assignment.query.dart';

class DAssignmentModule {
  static createTables() async {
    await DAssignmentQuery().createTable();
  }

  DAssignmentQuery get assignment => DAssignmentQuery();
}
