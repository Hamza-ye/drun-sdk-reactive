// import 'package:d_sdk/auth/user_detail.dart';
//
// class AuthenticatedUserDetail extends UserDetail {
//   AuthenticatedUserDetail(
//       {required this.id,
//       required this.username,
//       required this.password,
//       this.mobile = '',
//       this.firstname,
//       this.lastname,
//       this.langKey = 'ar',
//       this.email,
//       this.imageUrl,
//       required this.baseUrl,
//       required this.authorities,
//       required this.activated});
//
//   final String id;
//   final String username;
//   final String password;
//   final String? mobile;
//   final String? email;
//   final String? firstname;
//   final String? lastname;
//   final String langKey;
//   final String? imageUrl;
//   final List<String> authorities;
//   final String baseUrl;
//   final bool activated;
//
//   factory AuthenticatedUserDetail.fromMap(Map<String, dynamic> data) {
//     final List<dynamic> authorities = data['authorities'] ?? [];
//     return AuthenticatedUserDetail(
//       id: data['uid'] ?? data['id'],
//       username: data['login'] ?? data['username'],
//       firstname: data['firstname'] ?? '-',
//       lastname: data['lastname'] ?? '-',
//       mobile: data['mobile'] ?? '-',
//       email: data['email'] ?? '-',
//       imageUrl: data['imageUrl'],
//       baseUrl: data['baseUrl'],
//       authorities: authorities.cast<String>(),
//       activated: data['activated'],
//       langKey: data['langKey'] ?? 'ar',
//       password: data['password'],
//     );
//   }
//
//
//   @override
//   List<Object?> get props =>
//       super.props +
//       [username, baseUrl, id, email, password, langKey, imageUrl, activated];
//
//   Map<String, dynamic> toJson() {
//     return {
//       'id': this.id,
//       'username': this.username,
//       'password': this.password,
//       'mobile': this.mobile,
//       'email': this.email,
//       'firstname': this.firstname,
//       'lastname': this.lastname,
//       'langKey': this.langKey,
//       'imageUrl': this.imageUrl,
//       'authorities': this.authorities,
//       'baseUrl': this.baseUrl,
//       'activated': this.activated,
//     };
//   }
// }
//
// //
// // class AuthenticatedUser extends UserDetail {
// //   final String id;
// //   final String username;
// //   final String mobile;
// //   final String firstname;
// //   final String lastname;
// //   final String langKey;
// //   final String? imageUrl;
// //   final String baseUrl;
// //   final List<String> authorities;
// //   final bool activated;
// //
// //   AuthenticatedUser(
// //       {required this.id,
// //         required this.username,
// //         this.mobile = '',
// //         required this.firstname,
// //         required this.lastname,
// //         required this.langKey,
// //         this.imageUrl,
// //         required this.baseUrl,
// //         required this.authorities,
// //         required this.activated});
// //
// //   @override
// //   bool get authenticated => true;
// //
// //   factory AuthenticatedUser.fromApi(Map<String, dynamic> data) {
// //     final List<dynamic> authorities = data['authorities'] ?? [];
// //     return AuthenticatedUser(
// //       id: data['uid'] ?? data['id'],
// //       username: data['login'] ?? data['username'],
// //       firstname: data['firstname'] ?? '',
// //       lastname: data['lastname'] ?? '',
// //       imageUrl: data['imageUrl'],
// //       baseUrl: data['baseUrl'],
// //       authorities: authorities.cast<String>(),
// //       activated: data['activated'],
// //       langKey: data['langKey'] ?? 'ar',
// //     );
// //   }
// //
// // // Load from database during initialization
// //   static Future<AuthenticatedUser> fromDatabase(DbManager db) async {
// //     final user = await db.users.getCurrentUser();
// //     return AuthenticatedUser(
// //       id: user.id,
// //       username: user.username,
// //       // ... other fields
// //     );
// //   }
// // }
