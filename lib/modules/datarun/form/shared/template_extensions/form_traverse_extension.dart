// import 'package:d2_remote/core/utilities/list_extensions.dart';
// import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
// import 'package:d2_remote/modules/datarun/form/shared/field_template.entity.dart';
// import 'package:d2_remote/modules/datarun/form/shared/template_extensions/field_template_extension.dart';
// import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
//
// extension FormTraverseExtension on FormVersion {
//   List<FieldTemplate> get formFlatFields {
//       List<FieldTemplate> flatFields = [];
//       void traverse(FieldTemplate field) {
//         flatFields.add(field);
//         for (var subField in field.fields) {
//           traverse(subField);
//         }
//       }
//
//       fields.forEach(traverse);
//     return flatFields;
//   }
//
//   FieldTemplate? findFieldByPath(String path) {
//     for (var field in fields) {
//       var found = field.findFieldByPath(path);
//       if (found != null) return found;
//     }
//     return null;
//   }
//
//   FieldTemplate? getDescendantsOfType(String path, ValueType type) {
//     for (var field in fields) {
//       var found = field.findFieldByPathAndType(path, type);
//       if (found != null) return found;
//     }
//     return null;
//   }
//
//   List<String> getAllPaths() {
//     List<String> paths = [];
//     void traverse(FieldTemplate field) {
//       paths.add(field.fullPath);
//       for (var subField in field.fields) {
//         traverse(subField);
//       }
//     }
//
//     fields.forEach(traverse);
//     return paths;
//   }
//
//   List<FieldTemplate> getDescendants(String nodePath) {
//     return formFlatFields
//         .where((node) => node.fullPath.startsWith('$nodePath.'))
//         .toList();
//   }
//
//   List<FieldTemplate> getImmediateChildren(String nodePath) {
//     final depth = nodePath
//         .split('.')
//         .length + 1;
//     return formFlatFields.where((node) {
//       return node.fullPath.startsWith('$nodePath.') &&
//           node.fullPath
//               .split('.')
//               .length == depth;
//     }).toList();
//   }
//
//   FieldTemplate? getParent(String fieldPath) {
//     final parentPath = fieldPath.split('.')
//       ..removeLast();
//     if (parentPath.isEmpty) return null; // Root node has no parent
//     return formFlatFields
//         .firstOrNullWhere((n) => n.fullPath == parentPath.join('.'));
//   }
//
//   List<FieldTemplate> getSiblings(String fieldPath) {
//     final parentPath = fieldPath.split('.')
//       ..removeLast();
//     if (parentPath.isEmpty) return []; // Root node has no siblings
//     final depth = fieldPath
//         .split('.')
//         .length;
//     return formFlatFields.where((n) {
//       return n.fullPath
//           .split('.')
//           .length == depth &&
//           n.fullPath.startsWith(parentPath.join('.')) &&
//           n.fullPath != fieldPath;
//     }).toList();
//   }
// }
