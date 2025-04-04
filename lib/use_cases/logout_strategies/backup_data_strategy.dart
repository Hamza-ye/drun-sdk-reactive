// ignore_for_file: unused_field

import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';

class BackupDataHandler implements LogoutHandler {
  final DbManager _dbManager;

  BackupDataHandler(this._dbManager);

  Future<void> handle(String userId, String server) async {}
}
