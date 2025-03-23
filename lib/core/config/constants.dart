import 'package:d_sdk/core/config/environment.dart';

abstract interface class SdkConstants {
  static const Environment environment = Environment.production;
}

abstract interface class ApiConstants {
  static const String kApiProductionBaseUrl = 'https://api.nmcpye.org';
  static const String kApiStagingBaseUrl = 'https://play.nmcpye.org';
  static const String kApiLocal = 'http://localhost:8080';
  static const String kApiPath = '/api/custom';

  // // App-specific configuration (move in app/)
  // static const serverInstances = const {
  //   Environment.production: ServerConfig(
  //       kApiProductionBaseUrl, Environment.production,
  //       apiPingUrl: '${kApiProductionBaseUrl}/api/authenticate'),
  //   Environment.staging: ServerConfig(kApiStagingBaseUrl, Environment.staging,
  //       apiPingUrl: '${kApiStagingBaseUrl}/api/authenticate'),
  //   Environment.local: ServerConfig(kApiLocal, Environment.staging,
  //       apiPingUrl: '${kApiLocal}/api/authenticate'),
  // };
}

abstract interface class CacheKeys {
  static const String authTokenKey = 'session_token';
  static const String cachedUsersKey = 'session_cached_users';
  static const String userKey = 'session_user';
  static const String serverUrlKey = 'session_server_url';
  static const String environmentKey = 'session_environment';
}
