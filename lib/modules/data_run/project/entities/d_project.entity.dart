import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/data_run/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dProject', apiResourceName: 'projects')
class DProject extends IdentifiableEntity {
  @OneToMany(table: DActivity)
  List<DActivity>? activities;

  DProject(
      {required String id,
      String? created,
      String? lastUpdated,
      required String? name,
      required String? shortName,
      String? code,
      String? displayName,
      String? uid,
      this.activities,
      required dirty})
      : super(
            id: id,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            uid: uid,
            dirty: dirty);

  factory DProject.fromJson(Map<String, dynamic> json) {
    return DProject(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],
        created: json['created'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        activities: List<dynamic>.from(json['activities'] ?? [])
            .map((activity) => DActivity.fromJson({
                  ...activity,
                  'project': json['id'].toString(),
                  'dirty': false
                }))
            .toList(),
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastUpdated'] = this.lastUpdated;
    data['uid'] = this.uid;
    data['id'] = this.id;
    data['created'] = this.created;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activities'] = this.activities;
    data['dirty'] = this.dirty;
    return data;
  }
}
