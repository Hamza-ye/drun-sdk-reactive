import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';

class BackupDataHandler implements LogoutHandler {
  final DbManager _dbManager;

  BackupDataHandler(this._dbManager);

  Future<void> handle(String userId, ServerConfig server) async {}
}
