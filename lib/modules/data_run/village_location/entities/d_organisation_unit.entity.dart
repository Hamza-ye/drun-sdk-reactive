import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dOrganisationUnit', apiResourceName: 'village-locations')
class DOrganisationUnit extends IdentifiableEntity {
  @Column(nullable: false)
  String subdistrictName;

  @Column(nullable: true)
  String? villageName;

  @Column(nullable: true)
  String? subvillageName;

  @Column(nullable: true)
  double? longitude;

  @Column(nullable: true)
  double? latitude;

  @Column(nullable: false)
  String level;

  DOrganisationUnit(
      {required String id,
      required this.subdistrictName,
      this.villageName,
      this.subvillageName,
      this.longitude,
      this.latitude,
      required this.level,
      required String name,
      String? code,
      String? uid,
      required dirty})
      : super(id: id, name: name, code: code, uid: uid, dirty: dirty);

  factory DOrganisationUnit.fromJson(Map<String, dynamic> json) {
    return DOrganisationUnit(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        subdistrictName: json['subdistrictName'],
        villageName: json['villageName'],
        subvillageName: json['subvillageName'],
        longitude: json['longitude'],
        latitude: json['latitude'],
        level: json['level'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'code': code,
      'subdistrictName': subdistrictName,
      'villageName': villageName,
      'subvillageName': subvillageName,
      'name': name,
      'longitude': longitude,
      'latitude': latitude,
      'level': level,
      'dirty': dirty,
    };
  }
}
