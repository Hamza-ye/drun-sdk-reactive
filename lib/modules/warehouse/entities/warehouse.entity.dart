import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'warehouse', apiResourceName: 'warehouses')
class Warehouse extends IdentifiableEntity {
  @Column(nullable: true)
  String? description;

  @Column(nullable: true)
  String? gpsCoordinate;

  @Column(nullable: true)
  String? supervisor;

  @Column(nullable: true)
  String? supervisorMobile;

  @ManyToOne(table: DActivity, joinColumnName: 'activity')
  dynamic activity;

  Warehouse(
      {required String uid,
      int? id,
      required String name,
      String? code,
      this.gpsCoordinate,
      this.supervisor,
      this.supervisorMobile,
      required this.activity,
      required dirty})
      : super(uid: uid, id: id, name: name, code: code, dirty: false) {}

  factory Warehouse.fromJson(Map<String, dynamic> json) {
    return Warehouse(
        id: json['id'],
        uid: json['uid'],
        gpsCoordinate: json['gpsCoordinate'],
        supervisor: json['supervisor'],
        code: json['code'],
        supervisorMobile: json['supervisorMobile'],
        activity: json['activity'],
        name: json['name'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'name': name,
      'description': description,
      'gpsCoordinate': gpsCoordinate,
      'supervisor': supervisor,
      'supervisorMobile': supervisorMobile,
      'activity': activity,
      'code': code,
      'dirty': dirty,
    };
  }
}
