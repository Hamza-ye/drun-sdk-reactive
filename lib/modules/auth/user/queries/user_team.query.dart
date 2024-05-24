import 'package:d2_remote/modules/auth/user/entities/user_team.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class UserTeamQuery extends BaseQuery<UserTeam> {
  UserTeamQuery({Database? database}) : super(database: database);
}
