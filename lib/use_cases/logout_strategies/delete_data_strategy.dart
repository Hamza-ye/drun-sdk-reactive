import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';

class DeleteLocalDataHandler implements LogoutHandler {
  final DbManager _dbManager;

  DeleteLocalDataHandler(this._dbManager);

  Future<void> handle(String userId, String server) async {
    await _dbManager.deleteData();
  }
}
