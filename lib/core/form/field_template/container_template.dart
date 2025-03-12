import 'package:d_sdk/core/form/field_template/template.dart';
import 'package:d_sdk/core/form/template_path_walking_service.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class ContainerTemplate extends Template with TreeElement {
  IList<Template> get treeFields;

  bool get isRepeat;
}
