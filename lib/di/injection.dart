import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/user_session/session_storage_manager.dart';
import 'package:dio/dio.dart' show Dio;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt rSdkLocator = GetIt.instance;

@InjectableInit(
    initializerName: r'$initSdkGetIt',
    asExtension: false,
    ignoreUnregisteredTypes: [
      SessionRepository,
      Dio,
      AppEnvironmentInstance,
      DbManager,
    ])
Future<GetIt> setupSdkLocator() async {
  return $initSdkGetIt(rSdkLocator);
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
