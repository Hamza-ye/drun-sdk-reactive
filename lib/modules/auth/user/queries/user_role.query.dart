import 'package:d2_remote/modules/auth/user/entities/user_role.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class UserRoleQuery extends BaseQuery<UserRole> {
  UserRoleQuery({Database? database}) : super(database: database);
}
