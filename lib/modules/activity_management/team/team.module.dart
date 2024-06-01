import 'package:d2_remote/modules/activity_management/team/queries/team.query.dart';

class TeamModule {
  static createTables() async {
    await TeamQuery().createTable();
  }

  TeamQuery get team => TeamQuery();
}
