import 'package:d_sdk/database/app_database.dart';

abstract class LoadCurrentAccount {
  Future<User> load();
}