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

  // Template copyWith({
  //   String? id,
  //   String? description,
  //   String? path,
  //   int? order,
  //   String? name,
  //   String? code,
  //   bool? mainField,
  //   Iterable<Rule>? rules,
  //   Iterable<Template>? fields,
  //   Iterable<Template>? treeFields,
  //   ValueType? type,
  //   IMap<String, dynamic>? label,
  //   IMap<String, dynamic>? properties,
  //   bool? readOnly,
  //   String? constraint,
  //   IMap<String, String>? constraintMessage,
  // });
}
