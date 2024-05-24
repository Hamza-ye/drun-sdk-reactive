import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_team.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class DUserTeamQuery extends BaseQuery<DUserTeam> {
  DUserTeamQuery({Database? database}) : super(database: database);
}
