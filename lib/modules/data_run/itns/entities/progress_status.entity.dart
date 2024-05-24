import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'progressStatus', apiResourceName: 'progress-statuses')
class ProgressStatus extends IdentifiableEntity {
  ProgressStatus(
      {required String id, required String name, String? code, required dirty})
      : super(id: id, name: name, code: code, dirty: dirty);

  factory ProgressStatus.fromJson(Map<String, dynamic> json) {
    return ProgressStatus(
        id: json['uid'],
        code: json['code'],
        name: json['name'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': id,
      'code': code,
      'name': name,
      'dirty': dirty,
    };
  }
}
