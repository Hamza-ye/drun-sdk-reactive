import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'patientInfo', apiResourceName: 'patientInfo')
class PatientInfo extends IdentifiableEntity {
  int? age;
  String? gender;

  PatientInfo(
      {required String uid,
      int? id,
      String? created,
      String? lastUpdated,
      required String? name,
      String? code,
      String? displayName,
      this.age,
      this.gender,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            displayName: displayName,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory PatientInfo.fromJson(Map<String, dynamic> json) {
    return PatientInfo(
        id: json['id'],
        uid: json['uid'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        code: json['code'],
        age: json['age'],
        gender: json['gender'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastUpdated'] = this.lastUpdated;
    data['uid'] = this.uid;
    data['id'] = this.id;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['name'] = this.name;
    data['code'] = this.code;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['dirty'] = this.dirty;
    return data;
  }
}
