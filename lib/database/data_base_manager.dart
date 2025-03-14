import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/database/app_database.dart';

abstract class AppDatabaseManager {
  Future<AppDatabase> connectForUser({
    required String userId,
    required ServerConfig server,
  });
}
