import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
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

  @ManyToOne(table: Activity, joinColumnName: 'activity')
  dynamic activity;

  Warehouse(
      {required String id,
      required String name,
      String? code,
      this.gpsCoordinate,
      this.supervisor,
      this.supervisorMobile,
      required this.activity,
      required dirty})
      : super(id: id, name: name, code: code, dirty: false) {
  }

  factory Warehouse.fromJson(Map<String, dynamic> json) {
    return Warehouse(
        id: json['uid'],
        gpsCoordinate: json['gpsCoordinate'],
        supervisor: json['supervisor'],
        code: json['code'],
        supervisorMobile: json['supervisorMobile'],
        activity: json['activity']['uid'],
        name: json['name'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': id,
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
