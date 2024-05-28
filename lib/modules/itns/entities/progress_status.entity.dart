import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'progressStatus', apiResourceName: 'progressStatuses')
class ProgressStatus extends IdentifiableEntity {
  ProgressStatus(
      {required String uid,
        int? id,
      required String name,
      String? code,

      required dirty})
      : super(uid: uid, id: id, name: name, code: code, dirty: dirty);

  factory ProgressStatus.fromJson(Map<String, dynamic> json) {
    return ProgressStatus(
        id: json['id'],
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'code': code,
      'name': name,
      'dirty': dirty,
    };
  }
}
