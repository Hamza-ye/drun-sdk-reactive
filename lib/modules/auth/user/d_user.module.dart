import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user_authority.query.dart';

class DUserModule {
  static createTables() async {
    await DUserQuery().createTable();
    await DUserAuthorityQuery().createTable();
  }

  static logOut() async {}

  DUserQuery user = DUserQuery();

  DUserAuthorityQuery userAuthority = DUserAuthorityQuery();
}
