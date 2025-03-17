import 'package:d_sdk/database/app_database.dart';

abstract class SaveCurrentAccount {
  Future<void> save(User account);
}
