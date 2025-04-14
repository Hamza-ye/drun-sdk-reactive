import 'package:d_sdk/d_sdk.dart';
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart';
import 'package:injectable/injectable.dart';

class DeleteLocalDataHandler implements LogoutHandler {
  Future<void> handle() async {
    await DSdk.dbManager.deleteData();
  }
}
