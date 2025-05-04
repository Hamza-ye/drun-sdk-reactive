import 'package:d_sdk/user_session/session_context.extension.dart';
import 'package:equatable/equatable.dart';

typedef TokenPair = ({String accessToken, String refreshToken});

/// Model for the Session Context as a Core App Entity that
/// encapsulates everything about the current user environment

class SessionContext with EquatableMixin {
  static const String activeSessionScope = 'activeSessionContext';

  SessionContext({
    required this.username,
    required this.baseUrl,
    required this.accessToken,
    required this.refreshToken,
    this.loginTime,
  });

  final String username;
  final String baseUrl;
  final String accessToken;
  final String refreshToken;
  final DateTime? loginTime;

  String get key => '${username}_${sanitizeBaseUrl(baseUrl)}';

  String get dbName => key;

  Map<String, dynamic> toMap() {
    return {
      'username': this.username,
      'baseUrl': this.baseUrl,
      'accessToken': this.accessToken,
      'refreshToken': this.refreshToken,
      'loginTime': this.loginTime?.toIso8601String(),
    };
  }

  factory SessionContext.fromMap(Map<String, dynamic> map) {
    return SessionContext(
      username: map['username'],
      baseUrl: map['baseUrl'],
      accessToken: map['accessToken'] ?? '',
      refreshToken: map['refreshToken'] ?? '',
      loginTime: DateTime.tryParse(map['loginTime']),
    );
  }

  SessionContext copyWith({
    String? username,
    String? baseUrl,
    String? accessToken,
    String? refreshToken,
    DateTime? loginTime,
  }) {
    return SessionContext(
      username: username ?? this.username,
      baseUrl: baseUrl ?? this.baseUrl,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      loginTime: loginTime ?? this.loginTime,
    );
  }

  @override
  List<Object?> get props =>
      [username, baseUrl, accessToken, refreshToken, loginTime];
}
