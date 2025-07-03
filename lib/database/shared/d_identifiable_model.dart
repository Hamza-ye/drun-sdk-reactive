import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/database/shared/d_run_base.model.dart';
import 'package:flutter/cupertino.dart';

@immutable
class IdentifiableModel extends DRunBaseModel {
  IdentifiableModel(
      {required this.id,
      this.code,
      required this.name,
      this.description,
      this.disabled = false,
      this.deleted = false,
      Map<String, dynamic>? label})
      : this.label = label ?? {};

  final String id;
  final String? code;
  final String? description;
  final String name;
  final bool disabled;
  final bool deleted;
  final Map<String, dynamic> label;

  String get displayLabel => getItemLocalString(label, defaultString: name);

  IdentifiableModel copyWith({
    String? id,
    String? code,
    String? name,
    bool? disabled,
    bool? deleted,
    Map<String, dynamic>? label,
  }) {
    return IdentifiableModel(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      label: label ?? this.label,
      disabled: disabled ?? this.disabled,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  List<Object?> get props =>
      super.props + [code, name, disabled, deleted, description];
}
