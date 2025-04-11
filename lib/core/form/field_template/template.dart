import 'package:d_sdk/core/form/field_template/field_template.dart';
import 'package:d_sdk/core/form/rule/rule.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class Template with EquatableMixin {
  String? get id;

  String? get description;

  String? get path;

  int get order;

  String? get optionSet => null;

  String? get name;

  String? get code;

  bool get mainField => false;

  IList<Rule>? get rules;

  // IList<Template> get fields => const IList.empty();

  // IList<Template> get treeFields => const IList.empty();

  ValueType? get type;

  IMap<String, dynamic> get label;

  IMap<String, dynamic>? get properties;

  bool get readOnly;

  String? get constraint;

  IMap<String, String>? get constraintMessage;

  @override
  List<Object?> get props => [
        id,
        code,
        path,
        name,
        description,
        type,
        rules,
        label,
        properties,
        readOnly,
        constraint
      ];

  static Template fromJsonFactory(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final valueType = ValueType.getValueType(type);

    switch (valueType) {
      case ValueType.Section:
      case ValueType.RepeatableSection:
        return SectionTemplate.fromJson(json);
      default:
        return FieldTemplate.fromJson(json);
    }
  }

  static Map<String, dynamic> toJsonFactory(Template template) {
    switch (template.type) {
      case ValueType.Section:
      case ValueType.RepeatableSection:
        return (template as SectionTemplate).toJson();
      default:
        return (template as FieldTemplate).toJson();
    }
  }
}
