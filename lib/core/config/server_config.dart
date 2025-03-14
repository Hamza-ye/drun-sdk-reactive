enum Environment { production, staging, local }

class ServerConfig {
  final Environment environment;
  final String baseUrl;
  final String? displayName; // e.g., "Production EU", "Training US"

  const ServerConfig(this.environment, this.baseUrl, {this.displayName});
}