import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

import 'team.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'teamGroup', apiResourceName: 'teamGroups')
class TeamGroup extends IdentifiableEntity {
  @OneToMany(table: Team)
  List<Team>? teams;

  TeamGroup(
      {required String id,
      required String name,
      this.teams,
      required bool dirty})
      : super(id: id, name: name, dirty: dirty);

  factory TeamGroup.fromJson(Map<String, dynamic> json) {
    return TeamGroup(
        id: json['id'],
        name: json['name'],
        teams: List<dynamic>.from(json['teams'] ?? [])
            .map((team) => Team.fromJson(
                {...team, 'teamGroup': json['id'], 'dirty': false}))
            .toList(),
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['teams'] = this.teams;
    data['dirty'] = this.dirty;
    return data;
  }
}
