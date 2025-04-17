// import 'package:equatable/equatable.dart';
//
// abstract class UserDetail with EquatableMixin {
//   String get id;
//
//   String get username;
//
//   String get baseUrl;
//
//   String get apiHost => Uri.parse(baseUrl).host;
//
//   String get dbFileName => '${apiHost}_${username}';
//
//   Map<String, dynamic> toJson() {
//     return <String, dynamic>{
//       'id': id,
//       'username': username,
//       'baseUrl': baseUrl,
//     };
//   }
//
//   @override
//   List<Object?> get props => [id, username, baseUrl];
// }
