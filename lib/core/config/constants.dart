import 'package:d_sdk/core/config/server_config.dart';

const String kApiPath = '/api/custom/';
const String kApiProductionBaseUrl = 'https://api.nmcpye.org';
const String kApiStagingBaseUrl = 'https://play.nmcpye.org';

const String kApiPingUrl = '$kApiProductionBaseUrl/api/authenticate';

// App-specific configuration (lives in app/)
final serverInstances = const {
  Environment.production: ServerConfig(
      Environment.production, kApiProductionBaseUrl,
      displayName: 'Production'),
  Environment.staging: ServerConfig(Environment.staging, kApiStagingBaseUrl,
      displayName: 'Staging'),
  Environment.local: ServerConfig(Environment.local, 'http://localhost:8080',
      displayName: 'Localhost Server'),
};
