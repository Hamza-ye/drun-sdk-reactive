class AppEnvironmentInstance {
  AppEnvironmentInstance({
    required this.envLabel,
    required this.apiBaseUrl,
    required this.apiPath,
    this.encryptionKey,
    String? apiUserAuthResource,
    String? defaultLocale,
    int? apiRequestSentTimeout,
    bool? secureDatabase,
  })  : this.apiRequestSentTimeout = apiRequestSentTimeout ?? 20,
        this.defaultLocale = defaultLocale ?? 'ar',
        this.apiUserAuthResource = apiUserAuthResource ?? 'me',
        this.secureDatabase = secureDatabase ?? false;

  final String apiBaseUrl;
  final String apiPath;
  final String apiUserAuthResource;
  final String envLabel;
  final String defaultLocale;
  final int apiRequestSentTimeout;
  final bool secureDatabase;
  final String? encryptionKey;

  String get apiPingUrl => '/api/authenticate';
}
