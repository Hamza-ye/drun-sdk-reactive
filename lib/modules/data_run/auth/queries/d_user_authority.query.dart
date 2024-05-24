import 'package:d2_remote/modules/data_run/auth/user/d_user_authority.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class DUserAuthorityQuery extends BaseQuery<DUserAuthority> {
  DUserAuthorityQuery({Database? database}) : super(database: database);
}
