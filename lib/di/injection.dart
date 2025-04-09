import 'package:d_sdk/core/config/server_config.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt rSdkLocator = GetIt.instance;

@InjectableInit(
    initializerName: r'$initD2RemoteGetIt',
    asExtension: false,
    ignoreUnregisteredTypes: [DbManager])
Future<GetIt> setupSdkLocator(
    {required String username, required String baseUrl}) async {
  rSdkLocator.enableRegisteringMultipleInstancesOfOneType();

  final appDatabase = await DbManager.createDb(
      username: username, server: ServerConfig(baseUrl));
  rSdkLocator.registerSingleton<DbManager>(DbManager(appDatabase: appDatabase));
  return $initD2RemoteGetIt(rSdkLocator);
}
