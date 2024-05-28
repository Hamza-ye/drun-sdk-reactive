import 'package:d2_remote/modules/data_run/teams/queries/d_team.query.dart';

class DTeamModule {
  static createTables() async {
    await DTeamQuery().createTable();
  }

  DTeamQuery get team => DTeamQuery();
}
