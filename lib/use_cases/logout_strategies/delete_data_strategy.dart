import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';
import 'package:drift/drift.dart';

class DeleteLocalDataHandler implements LogoutHandler {
  final DbManager _dbManager;

  DeleteLocalDataHandler(this._dbManager);

  Future<void> handle(String userId, ServerConfig server) async {
    await _dbManager
        .getActiveDb()
        ?.customStatement('PRAGMA foreign_keys = OFF');
    try {
      _dbManager.getActiveDb()?.transaction(() async {
        for (final table in _dbManager.getActiveDb()?.allTables ??
            <TableInfo<Table, Object?>>[]) {
          await _dbManager.getActiveDb()?.delete(table).go();
        }
      });
    } finally {
      await _dbManager
          .getActiveDb()
          ?.customStatement('PRAGMA foreign_keys = OFF');
      ;
    }
  }
}
