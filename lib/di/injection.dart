import 'package:d_sdk/auth/authentication_service.dart'
    show AuthenticationService;
import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/database/database.dart';
import 'package:dio/dio.dart' show Dio;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt rSdkLocator = GetIt.instance;

@InjectableInit(
    initializerName: r'$initD2RemoteGetIt',
    asExtension: false,
    ignoreUnregisteredTypes: [
      UserSessionRepository,
      Dio,
      AppEnvironmentInstance,
      DbManager,
      AuthenticationService,
      HttpClient
    ])
Future<GetIt> setupSdkLocator() async {
  await rSdkLocator.reset();
  return $initD2RemoteGetIt(rSdkLocator);
}

//
// void registerDbManager(GetIt getIt,
//     {String? environment, EnvironmentFilter? environmentFilter}) async {
//   final gh = GetItHelper(
//     getIt,
//     environment,
//     environmentFilter,
//   );
//   gh.lazySingleton<DbManager>(
//     () => DbManager(gh<UserSessionRepository>()).init(),
//     dispose: (i) => i.closeDatabase(),
//   );
// }
//
// Future<void> unregisterDbManager(GetIt getIt) async {
//   await getIt.unregister<DbManager>();
// }
