import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dTeam', apiResourceName: 'teams')
class DTeam extends IdentifiableEntity {
  // @ManyToOne(table: DActivity, joinColumnName: 'activity')
  // dynamic activity;
  @Column(nullable: true)
  String? activity;

  @Column(nullable: true)
  final String? mobile;

  @Column(nullable: true, type: ColumnType.TEXT)
  String teamType;

  @Column(type: ColumnType.BOOLEAN)
  bool disabled;

  DTeam(
      {String? id,
      required String uid,
      String? createdDate,
      String? lastModifiedDate,
      required String name,
      String? shortName,
      String? code,
      String? displayName,
      this.mobile,
      this.activity,
      this.disabled = true,
      required this.teamType,
      required dirty})
      : super(
            uid: uid,
            id: id,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory DTeam.fromJson(Map<String, dynamic> json) {
    return DTeam(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'] ?? json['name'],
        activity: json['activity'] != null
            ? json['activity'] is String
                ? json['activity']
                : json['activity']['uid']
            : null,
        mobile: json['mobile'],
        disabled: json['disabled'] ?? true,
        teamType: json['teamType'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        dirty: json['dirty']);
  }

  factory DTeam.fromApi(Map<String, dynamic> jsonData) {
    return DTeam(
        id: jsonData['id'].toString(),
        uid: jsonData['uid'],
        name: jsonData['name'],
        shortName: jsonData['shortName'],
        code: jsonData['code'],
        displayName: jsonData['displayName'] ?? jsonData['name'],
        activity: jsonData['activity'],
        disabled: jsonData['disabled'] ?? true,
        mobile: jsonData['mobile'],
        teamType: jsonData['teamType'],
        createdDate: jsonData['createdDate'],
        lastModifiedDate: jsonData['lastModifiedDate'],
        dirty: jsonData['dirty'] ?? false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activity'] = this.activity;
    data['disabled'] = this.disabled;
    data['mobile'] = this.mobile;
    data['teamType'] = this.teamType;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['dirty'] = this.dirty;
    return data;
  }
}
