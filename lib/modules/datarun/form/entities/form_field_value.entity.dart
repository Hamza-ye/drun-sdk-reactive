import 'dart:convert';

import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/annotations/relation.annotation.dart';
import 'package:d2_remote/modules/datarun/form/entities/data_form_submission.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'formFieldValue', apiResourceName: 'formFieldValues')
class FormFieldValue extends IdentifiableEntity {
  @ManyToOne(table: DataFormSubmission, joinColumnName: 'submission')
  dynamic submission;

  final String? section;

  final String? value;
  final List<String>? values;

  /// save uid = flattened_path
  FormFieldValue({
    required String id,
    String? uid,
    this.section,
    this.submission,
    this.values,
    this.value,
    required dirty,
  }) : super(
          id: id,
          uid: uid,
          dirty: dirty,
        );

  // From JSON string (Database and API)
  factory FormFieldValue.fromJson(Map<String, dynamic> json) {
    final values = json['values'] != null
        ? json['values'].runtimeType == String
            ? jsonDecode(json['values']).cast<String>()
            : json['values'].cast<String>()
        : null;
    return FormFieldValue(
      id: json['uid'],
      uid: json['uid'],
      value: json['value'],
      values: values,
      submission: json['submission'],
      section: json['section'],
      dirty: json['dirty'] ?? false,
    );
  }

  /// To JSON string for Database and API
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'value': value,
      'values': values != null ? jsonEncode(values) : null,
      'submission': submission,
      'section': section,
      'dirty': dirty,
    };
  }
}
