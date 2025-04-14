import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ConnectivityService {
  ConnectivityService(
      {required this.environmentInstance,
      @Named('httpAdapter') required this.httpClient});

  final AppEnvironmentInstance environmentInstance;
  final HttpClient<dynamic> httpClient;

  final StreamController<bool> _connectivityStatusController =
      StreamController<bool>.broadcast();

  Stream<bool> get connectivityStatusStream =>
      _connectivityStatusController.stream;

  Future<bool> isNetworkAvailable() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    }

    final result = connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile);
    return result;
  }

  Future<bool> checkInternetConnection() async {
    try {
      logDebug(
          'checkInternetConnection: ping ${environmentInstance.apiPingUrl} ...',
          data: {'runtimeType': this.runtimeType});
      final response = await httpClient.request(
          resourceName: environmentInstance.apiPingUrl, method: 'get');
      // .get(Uri.parse(environmentInstance.apiPingUrl))
      //     .timeout(const Duration(seconds: 20));
      if (response.statusCode == 200) {
        logDebug('Device is online!', data: {'runtimeType': this.runtimeType});
        return true;
      } else {
        logDebug('Device is offline!', data: {'runtimeType': this.runtimeType});
        return false;
      }
    } catch (_) {
      logDebug('Error checking internet Access, setting the status to offline!',
          data: {'runtimeType': this.runtimeType});
      return false;
    }

    // return _isOnline;
  }

  void dispose() {
    _connectivityStatusController.close();
  }
}
