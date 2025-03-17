import 'package:d_sdk/core/config/environment.dart';
import 'package:equatable/equatable.dart';

class ServerConfig with EquatableMixin {
  final String baseUrl;
  final Environment environment;
  final String apiPingUrl;

  const ServerConfig(this.baseUrl, this.environment, {String? apiPingUrl})
      : this.apiPingUrl = apiPingUrl ?? '${baseUrl}/api/authenticate';

  @override
  List<Object?> get props => [baseUrl, environment];
}
