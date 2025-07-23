import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/core/form/rule/rule.dart';
import 'package:d_sdk/core/form/tree/tree_element.dart';
import 'package:d_sdk/core/form/value_type_rendering_type.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class Template with EquatableMixin, TreeElement {
  //<editor-fold desc="Template Common properties">
  String get id;

  String? get description;

  String? get parent;

  String? get path;

  int get order;

  String? get name;

  String? get code;

  IMap<String, dynamic> get label;

  bool get readOnly;
  bool get mandatory => false;

  IList<Rule>? get rules;

  IMap<String, dynamic>? get properties;

  ValueTypeRenderingType get valueTypeRendering =>
      ValueTypeRenderingType.DEFAULT;

  //</editor-fold>

  //<editor-fold desc="Leaf field Templates properties">
  String? get optionSet => null;

  bool get mainField => false;

  ValueType? get type => null;

  String? get constraint => null;

  IMap<String, String>? get constraintMessage => const IMapConst({});

  //</editor-fold>

  //<editor-fold desc="Container/Group Template properties">
  bool get repeatable;

  List<Template> get children => [];

  //</editor-fold>
  @override
  List<Object?> get props => [id, path];

  static Template fromJsonFactory(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final valueType = ValueType.getValueType(type);

    return switch (valueType) {
      null => SectionTemplate.fromJson(json),
      _ => FieldTemplate.fromJson(json),
    };
  }

  static Map<String, dynamic> toJsonFactory(Template template) {
    return switch (template.type) {
      null => (template as SectionTemplate).toJson(),
      _ => (template as FieldTemplate).toJson(),
    };
  }
}
