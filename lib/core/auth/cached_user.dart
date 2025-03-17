import 'package:d_sdk/core/config/environment.dart';

class CachedUser {
  final String username;
  final String baseUrl;
  final Environment environment;

  const CachedUser(
      {required this.username,
      required this.baseUrl,
      required this.environment});

  factory CachedUser.fromJson(Map<String, dynamic> json) {
    return CachedUser(
      username: json['username'],
      baseUrl: json['baseUrl'],
      environment: Environment.getValue(json['environment']),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'baseUrl': baseUrl,
      'environment': environment.name,
    };
  }

  CachedUser copyWith({
    String? username,
    String? baseUrl,
    Environment? environment,
  }) =>
      CachedUser(
        username: username ?? this.username,
        baseUrl: baseUrl ?? this.baseUrl,
        environment: environment ?? this.environment,
      );

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('username: $username, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('environment: $environment, ')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        username,
        baseUrl,
        environment,
      ]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedUser &&
          other.username == this.username &&
          other.baseUrl == this.baseUrl &&
          other.environment == this.environment);
}
