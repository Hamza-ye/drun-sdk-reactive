import 'package:d2_remote/core/annotations/index.dart' as legacy;
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@legacy.AnnotationReflectable
@legacy.Entity(tableName: 'userAuthority', apiResourceName: 'userAuthorities')
class UserAuthority extends IdentifiableEntity {
  @legacy.Column()
  final String authority;

  @legacy.ManyToOne(joinColumnName: 'user', table: User)
  dynamic user;

  UserAuthority(
      {required String id,
      // required String uid,
      required String name,
      required this.authority,
      required this.user,
      required bool dirty})
      : super(
      // uid: uid,
      id: id, name: name, dirty: dirty);

  factory UserAuthority.fromJson(Map<String, dynamic> json) {
    return UserAuthority(
        id: json['uid'] ?? json['id'],
        // uid: json['uid'],
        name: json['uid'] ?? json['id'],
        authority: json['authority'],
        user: json['user'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['authority'] = this.authority;
    data['user'] = this.user;
    data['dirty'] = this.dirty;

    return data;
  }
}
