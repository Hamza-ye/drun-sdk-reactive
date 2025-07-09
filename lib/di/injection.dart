import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/database/dbManager.dart';
import 'package:d_sdk/user_session/session_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

GetIt rSdkLocator = GetIt.instance;

@InjectableInit(
    initializerName: r'$initSdkGetIt',
    asExtension: false,
    ignoreUnregisteredTypes: [
      SessionRepository,
      Dio,
      DbManager,
      HttpClient,
    ])
GetIt setupSdkLocator() {
  // rSdkLocator.enableRegisteringMultipleInstancesOfOneType();
  return $initSdkGetIt(rSdkLocator);
}
