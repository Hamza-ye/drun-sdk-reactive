import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dUserTeam', apiResourceName: 'userTeams')
class DUserTeam extends IdentifiableEntity {
  @Column()
  final String team;

  @ManyToOne(joinColumnName: 'user', table: DUser)
  dynamic user;

  DUserTeam(
      {required String id,
      required String name,
      required this.team,
      required this.user,
      required bool dirty})
      : super(id: id, name: name, dirty: dirty);

  factory DUserTeam.fromJson(Map<String, dynamic> json) {
    return DUserTeam(
        id: json['id'],
        name: json['id'],
        team: json['team'],
        user: json['user'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['team'] = this.team;
    data['user'] = this.user;
    data['dirty'] = this.dirty;
    return data;
  }
}
