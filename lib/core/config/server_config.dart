import 'package:equatable/equatable.dart';

class ServerConfig with EquatableMixin {
  final String baseUrl;

  // final Environment environment;
  final String apiPingUrl;

  const ServerConfig(this.baseUrl, {String? apiPingUrl})
      : this.apiPingUrl = apiPingUrl ?? '${baseUrl}/api/authenticate';

  @override
  List<Object?> get props => [baseUrl];
}
