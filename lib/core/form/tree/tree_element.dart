import 'package:d_sdk/database/shared/shared.dart';

mixin TreeElement {
  String get id;

  String? get parent;

  String? get path;

  String? get name;

  ValueType? get type => null;

  List<TreeElement> get children;

  String get displayName;
}
