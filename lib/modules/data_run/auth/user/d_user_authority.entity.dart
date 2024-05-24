import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data_run/auth/user/d_user.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dUserAuthority', apiResourceName: 'userAuthorities')
class DUserAuthority extends IdentifiableEntity {
  @Column()
  final String authority;

  @ManyToOne(joinColumnName: 'user', table: DUser)
  dynamic user;

  DUserAuthority(
      {required String id,
      required String name,
      required this.authority,
      required this.user,
      required bool dirty})
      : super(id: id, name: name, dirty: dirty);

  factory DUserAuthority.fromJson(Map<String, dynamic> json) {
    return DUserAuthority(
        id: json['id'],
        name: json['id'],
        authority: json['authority'],
        user: json['user'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['authority'] = this.authority;
    data['user'] = this.user;
    data['dirty'] = this.dirty;
    return data;
  }
}
