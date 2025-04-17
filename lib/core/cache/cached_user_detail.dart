// import 'package:d_sdk/auth/user_detail.dart';
// import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
//
// typedef TokenPair = ({String accessToken, String refreshToken});
//
// class CachedUserDetail extends UserDetail {
//   CachedUserDetail({
//     required this.id,
//     required this.username,
//     required this.baseUrl,
//     required this.accessToken,
//     required this.refreshToken,
//   });
//
//   final String id;
//   final String username;
//   final String baseUrl;
//   final String accessToken;
//   final String refreshToken;
//
//   TokenPair getTokenPair() {
//     return (accessToken: accessToken, refreshToken: refreshToken);
//   }
//
//   bool get isAccessTokenValid {
//     final tokenPair = getTokenPair();
//
//     // subject: username, issuer: baseUrl, audience: baseUrl
//     final decodedJwt = JWT.decode(tokenPair.accessToken);
//     final expirationDateTime =
//         DateTime.fromMillisecondsSinceEpoch(decodedJwt.payload['exp'] * 1000);
//
//     return DateTime.now()
//         .add(const Duration(milliseconds: 1000)) // Safety margin
//         .isBefore(expirationDateTime);
//   }
//
//   factory CachedUserDetail.fromMap(Map<String, dynamic> json) {
//     return CachedUserDetail(
//       id: json['id'],
//       username: json['username'],
//       baseUrl: json['baseUrl'],
//       accessToken: json['accessToken'],
//       refreshToken: json['refreshToken'],
//     );
//   }
//
//   CachedUserDetail copyWith({
//     String? id,
//     String? username,
//     String? baseUrl,
//     String? accessToken,
//     String? refreshToken,
//   }) {
//     return CachedUserDetail(
//       id: id ?? this.id,
//       username: username ?? this.username,
//       baseUrl: baseUrl ?? this.baseUrl,
//       accessToken: accessToken ?? this.accessToken,
//       refreshToken: refreshToken ?? this.refreshToken,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'id': this.id,
//       'username': this.username,
//       'baseUrl': this.baseUrl,
//       'accessToken': this.accessToken,
//       'refreshToken': this.refreshToken,
//     };
//   }
// }
