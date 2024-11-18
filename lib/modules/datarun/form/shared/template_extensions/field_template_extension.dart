import 'package:d2_remote/modules/datarun/form/shared/field_template.entity.dart';

extension FieldTemplatePathExtension on FieldTemplate {
  String? get parentPath {
    final parentPath = path?.split('.')?..removeLast();
    if ((parentPath ?? []).isEmpty) return null; // Root node has no parent
    return parentPath!.join('.');
  }

  bool get isSection => type.isSectionType;

  bool get isSelectType => type.isSelectType;

  bool get isTextType => type.isText;

  bool get withChoiceFilter => choiceFilter != null;

// FieldTemplate? findFieldByPath(String path, [ValueType? valueType]) {
//   if (this.path == path) return this;
//   for (var field in fields) {
//     var found = field.findFieldByPath(path);
//     if (found != null) return found;
//   }
//   return null;
// }
//
// FieldTemplate? findFieldByPathAndType(String path, ValueType type) {
//   if (this.path == path && this.type == type) return this;
//   for (var field in fields) {
//     var found = field.findFieldByPathAndType(path, type);
//     if (found != null) return found;
//   }
//   return null;
// }
//
// FieldTemplate? findFieldByName(String name) {
//   if (this.name == name) return this;
//   for (var field in fields) {
//     var found = field.findFieldByName(name);
//     if (found != null) return found;
//   }
//   return null;
// }
}
