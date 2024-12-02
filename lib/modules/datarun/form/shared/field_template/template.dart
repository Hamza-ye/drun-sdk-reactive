import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class Template with EquatableMixin {
  String? get path;

  int get order;

  String? get name;
  
  bool get mainField => false;

  IList<Rule>? get rules;

  IList<Template> get fields => const IList.empty();

  ValueType? get type;

  IMap<String, String> get label;

  IMap<String, dynamic>? get properties;

  bool get readOnly;

  String? get constraint;

  IMap<String, String>? get constraintMessage;

  @override
  List<Object?> get props => [path, name, type, rules, label, properties];
}
