import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt rSdkLocator = GetIt.instance;

@InjectableInit(
    initializerName: r'$initD2RemoteGetIt',
    asExtension: false)
Future<GetIt> setupSdkLocator() async {
  return $initD2RemoteGetIt(rSdkLocator);
}
