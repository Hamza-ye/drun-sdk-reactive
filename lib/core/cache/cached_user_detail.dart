import 'package:d_sdk/auth/user_detail.dart';

class AuthUserCachedData extends UserDetail {
  AuthUserCachedData(
      {required this.id,
        required this.username,
        required this.baseUrl});

  final String id;
  final String username;
  final String baseUrl;

  String get apiHost => Uri.parse(baseUrl).host;

  String get dbFileName => '${apiHost}_${username}';

  factory AuthUserCachedData.fromJson(Map<String, dynamic> json) {
    return AuthUserCachedData(
      id: json['id']!,
      username: json['username'],
      baseUrl: json['baseUrl'],
    );
  }

  AuthUserCachedData copyWith({
    String? id,
    String? username,
    String? baseUrl,
  }) {
    return AuthUserCachedData(
      id: id ?? this.id,
      username: username ?? this.username,
      baseUrl: baseUrl ?? this.baseUrl,
    );
  }
}
