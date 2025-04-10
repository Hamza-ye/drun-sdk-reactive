import 'package:equatable/equatable.dart';

abstract class UserDetail with EquatableMixin {
  String get username;

  String get baseUrl;

  bool get authenticated;

  String get apiHost => Uri.parse(baseUrl).host;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'baseUrl': baseUrl,
    };
  }

  @override
  List<Object?> get props => [username, baseUrl];
}
