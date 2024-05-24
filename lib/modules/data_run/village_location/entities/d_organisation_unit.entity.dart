import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'villageLocation', apiResourceName: 'village-locations')
class VillageLocation extends IdentifiableEntity {
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

  VillageLocation(
      {required String id,
      required this.subdistrictName,
      this.villageName,
      this.subvillageName,
      this.longitude,
      this.latitude,
      required this.level,
      required String name,
      String? code,
      required dirty})
      : super(id: id, name: name, code: code, dirty: dirty);

  factory VillageLocation.fromJson(Map<String, dynamic> json) {
    return VillageLocation(
        id: json['uid'],
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
      'uid': id,
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
