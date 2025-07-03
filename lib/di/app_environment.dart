abstract class AppEnvironment {
  static const envLabel = String.fromEnvironment('env_label');
  static const apiBaseUrl = String.fromEnvironment('api_base_url');
  static const defaultLocale =
      String.fromEnvironment('default_locale', defaultValue: 'en');

  // if not present it defaults to false
  static const secureDatabase = bool.fromEnvironment('secure_database');
  static const secureCache = bool.fromEnvironment('secure_cache');
  static const apiPath = '/api/custom';
  static const apiV1Path = '/api/v1';
  static const apiPingUrl = '$apiBaseUrl/api/authenticate';
}
