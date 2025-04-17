import 'package:d_sdk/user_session/session_context.extension.dart';
import 'package:equatable/equatable.dart';

typedef TokenPair = ({String accessToken, String refreshToken});

/// Model for the Session Context as a Core App Entity that
/// encapsulates everything about the current user environment
class SessionContext with EquatableMixin {
  SessionContext({
    required this.username,
    required this.baseUrl,
    this.accessToken,
    this.refreshToken,
    this.loginTime,
    this.hasUnsyncedData = false,
  });

  final String username;
  final String baseUrl;
  final String? accessToken;
  final String? refreshToken;
  final DateTime? loginTime;
  final bool hasUnsyncedData;

  String get key => '${username}_${sanitizeBaseUrl(baseUrl)}';

  String get dbName => key;

  Map<String, dynamic> toMap() {
    return {
      'username': this.username,
      'baseUrl': this.baseUrl,
      'accessToken': this.accessToken,
      'refreshToken': this.refreshToken,
      'loginTime': this.loginTime?.toIso8601String(),
      'hasUnsyncedData': this.hasUnsyncedData,
    };
  }

  factory SessionContext.fromMap(Map<String, dynamic> map) {
    return SessionContext(
      username: map['username'],
      baseUrl: map['baseUrl'],
      accessToken: map['accessToken'],
      refreshToken: map['refreshToken'],
      loginTime: DateTime.tryParse(map['loginTime']),
      hasUnsyncedData: map['hasUnsyncedData'],
    );
  }

  SessionContext copyWith({
    String? username,
    String? baseUrl,
    String? accessToken,
    String? refreshToken,
    DateTime? loginTime,
    bool? hasUnsyncedData,
  }) {
    return SessionContext(
      username: username ?? this.username,
      baseUrl: baseUrl ?? this.baseUrl,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      loginTime: loginTime ?? this.loginTime,
      hasUnsyncedData: hasUnsyncedData ?? this.hasUnsyncedData,
    );
  }

  @override
  List<Object?> get props => [
        username,
        baseUrl,
        accessToken,
        refreshToken,
        loginTime,
        hasUnsyncedData
      ];
}
