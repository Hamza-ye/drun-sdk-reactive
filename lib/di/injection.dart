import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt rSdkLocator = GetIt.instance;

@InjectableInit(
    initializerName: r'$initD2RemoteGetIt',
    asExtension: false,
    ignoreUnregisteredTypes: [
      AppEnvironmentInstance,
    ])
Future<GetIt> setupSdkLocator(
    {required AppEnvironmentInstance envInstance}) async {
  // sdkLocator.reset();
  // final databaseProvider = await DatabaseProviderFactory.create(config: config);
  //
  rSdkLocator.enableRegisteringMultipleInstancesOfOneType();

  rSdkLocator.registerSingleton<AppEnvironmentInstance>(envInstance);
  return $initD2RemoteGetIt(rSdkLocator);
}
