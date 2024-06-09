import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/iccm/entities/patient_info.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'chvRegister', apiResourceName: 'chvRegisters')
class ChvRegister extends IdentifiableEntity {
  @ManyToOne(table: PatientInfo, joinColumnName: 'patient')
  dynamic patient;

  @Column(nullable: true)
  String? visitDate;

  @Column(nullable: true)
  int? age;

  @Column(nullable: true)
  bool? pregnant;

  @Column(nullable: true)
  String? testResult;

  @Column(nullable: true)
  String? detectionType;

  @Column(nullable: true)
  String? severity;

  @Column(nullable: true)
  String? treatment;

  @Column(nullable: true)
  String? comment;

  ChvRegister(
      {String? id,
      String? uid,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      this.visitDate,
      this.age,
      this.pregnant,
      this.testResult,
      this.detectionType,
      this.severity,
      this.treatment,
      this.comment,
      this.patient,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory ChvRegister.fromJson(Map<String, dynamic> json) {
    return ChvRegister(
        id: json['id'].toString(),
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        visitDate: json['visitDate'],
        pregnant: json['pregnant'],
        testResult: json['testResult'],
        detectionType: json['detectionType'],
        severity: json['severity'],
        treatment: json['treatment'],
        comment: json['comment'],
        patient: json['patient'] is String
            ? json['patient']
            : json['patient']['uid'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['code'] = this.code;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['visitDate'] = this.visitDate;
    data['pregnant'] = this.pregnant;
    data['testResult'] = this.testResult;
    data['detectionType'] = this.detectionType;
    data['severity'] = this.severity;
    data['treatment'] = this.treatment;
    data['comment'] = this.comment;
    data['patient'] = this.patient;
    data['dirty'] = this.dirty;
    return data;
  }
}
