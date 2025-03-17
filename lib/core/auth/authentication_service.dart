import 'package:d_sdk/core/auth/authentication_params.dart';
import 'package:d_sdk/database/app_database.dart';

abstract class AuthenticationService {
  Future<User> auth(AuthenticationParams params);
}
