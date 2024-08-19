import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'ouLevel', apiResourceName: 'ouLevels')
class OrgUnitLevel extends IdentifiableEntity {
  @Column(type: ColumnType.INTEGER)
  int? level;

  @Column(type: ColumnType.INTEGER, nullable: true)
  int? offlineLevels;

  OrgUnitLevel(
      {required String id,
      required String uid,
      String? created,
      String? code,
      String? lastUpdated,
      required String name,
      String? displayName,
      required this.level,
      this.offlineLevels,
      required dirty})
      : super(
            id: id,
            uid: uid,
            code: code,
            name: name,
            displayName: displayName,
            createdDate: created,
            lastModifiedDate: lastUpdated,
            dirty: dirty);

  factory OrgUnitLevel.fromJson(Map<String, dynamic> json) {
    return OrgUnitLevel(
        id: json['uid'],
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        level: json['level'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        offlineLevels: json['offlineLevels'],
        displayName: json['displayName'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['id'] = this.uid;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['level'] = this.level;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['name'] = this.name;
    data['offlineLevels'] = this.offlineLevels;
    data['displayName'] = this.displayName;
    data['dirty'] = this.dirty;

    return data;
  }
}
