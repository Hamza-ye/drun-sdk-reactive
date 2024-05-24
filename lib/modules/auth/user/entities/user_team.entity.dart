import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

import 'user.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'userTeam', apiResourceName: 'userTeams')
class UserTeam extends IdentifiableEntity {
  @Column()
  final String team;

  @ManyToOne(joinColumnName: 'user', table: User)
  dynamic user;

  UserTeam(
      {required String id,
      required String name,
      required this.team,
      required this.user,
      required bool dirty})
      : super(id: id, name: name, dirty: dirty);

  factory UserTeam.fromJson(Map<String, dynamic> json) {
    return UserTeam(
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
