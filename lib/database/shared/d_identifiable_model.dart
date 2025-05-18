import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/database/shared/d_run_base.model.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';

@immutable
class IdentifiableModel extends DRunBaseModel {
  IdentifiableModel(
      {required this.id,
      this.code,
      required this.name,
      this.disabled = false,
      this.deleted = false,
      IMap<String, dynamic> label = const IMapConst({})})
      : this.label = label;

  final String id;
  final String? code;
  final String name;
  final bool disabled;
  final bool deleted;
  final IMap<String, dynamic> label;

  String get displayLabel =>
      getItemLocalString(label.unlockView, defaultString: name);

  IdentifiableModel copyWith({
    String? id,
    String? code,
    String? name,
    bool? disabled,
    bool? deleted,
    IMap<String, dynamic>? label,
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
  List<Object?> get props => super.props + [code, name, disabled, deleted];
}
