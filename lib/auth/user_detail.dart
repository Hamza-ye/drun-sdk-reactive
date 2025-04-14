import 'package:equatable/equatable.dart';

abstract class UserDetail with EquatableMixin {
  String? get id => null;

  String? get username => null;

  String? get baseUrl => null;

  String? get apiHost => null;

  String? get dbFileName => null;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'baseUrl': baseUrl,
    };
  }

  @override
  List<Object?> get props => [id, username, baseUrl];
}
