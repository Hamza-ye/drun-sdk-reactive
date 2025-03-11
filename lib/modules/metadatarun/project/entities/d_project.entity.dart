import 'package:d2_remote/core/annotations/index.dart' as legacy;
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@legacy.AnnotationReflectable
@legacy.Entity(tableName: 'project', apiResourceName: 'projects')
class Project extends IdentifiableEntity {
  @legacy.OneToMany(table: Activity)
  List<Activity>? activities;

  @legacy.Column(type: legacy.ColumnType.BOOLEAN)
  bool disabled;

  Project(
      {String? id,
      // required String uid,
      String? createdDate,
      String? lastModifiedDate,
      required String? name,
      required String? shortName,
      String? code,
      String? displayName,
      this.activities,
      required this.disabled,
      required dirty})
      : super(
            id: id,
            // uid: uid,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        id: json['uid'] ?? json['id'].toString(),
        // uid: json['uid'],
        name: json['name'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'] ?? json['name'],
        disabled: json['disabled'] ?? true,
        activities: List<dynamic>.from(json['activities'] ?? [])
            .map((activity) => Activity.fromJson(
                {...activity, 'project': json['uid'], 'dirty': false}))
            .toList(),
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['disabled'] = this.disabled;
    data['activities'] = this.activities;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['dirty'] = this.dirty;
    return data;
  }
}
