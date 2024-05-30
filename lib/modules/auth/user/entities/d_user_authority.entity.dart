import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'userAuthority', apiResourceName: 'userAuthorities')
class DUserAuthority extends IdentifiableEntity {
  @Column()
  final String authority;

  @ManyToOne(joinColumnName: 'user', table: DUser)
  dynamic user;

  DUserAuthority(
      {required String uid,
      int? id,
      required String name,
      required this.authority,
      required this.user,
      required bool dirty})
      : super(uid: uid, id: id, name: name, dirty: dirty);

  factory DUserAuthority.fromJson(Map<String, dynamic> json) {
    return DUserAuthority(
        id: json['id'],
        uid: json['uid'],
        name: json['id'],
        authority: json['authority'],
        user: json['user'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['authority'] = this.authority;
    data['user'] = this.user;
    data['dirty'] = this.dirty;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    return data;
  }
}
