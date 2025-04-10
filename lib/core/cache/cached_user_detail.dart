import 'package:d_sdk/core/auth/user_detail.dart';

class CachedUserDetail extends UserDetail {
  final String username;
  final String baseUrl;

  bool get authenticated => false;

  CachedUserDetail({required this.username, required this.baseUrl});

  factory CachedUserDetail.fromJson(Map<String, dynamic> json) {
    return CachedUserDetail(
      username: json['username'],
      baseUrl: json['baseUrl'],
    );
  }

  CachedUserDetail copyWith({
    String? username,
    String? baseUrl,
  }) =>
      CachedUserDetail(
        username: username ?? this.username,
        baseUrl: baseUrl ?? this.baseUrl,
      );

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('username: $username, ')
          ..write('baseUrl: $baseUrl, ')
          ..write(')'))
        .toString();
  }
}
