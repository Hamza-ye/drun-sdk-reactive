// import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
// import 'package:d2_remote/modules/datarun/form/shared/template_extensions/field_template_extension.dart';
//
// extension FormTemplateExtension on FormVersion {
//
//   String? resolveDependencyPath(String fieldPath, String dependencyName) {
//     // Check in current scope
//     for (var field in fields) {
//       if (field.name == dependencyName) {
//         return field.fullPath;
//       }
//     }
//
//
//     // Check in parent scopes
//     if (parentPath != null) {
//       var parent = fields.firstWhere((f) => f.fullPath == parentPath, orElse: () => this);
//       return parent.resolveDependencyPath(dependencyName, allFields);
//     }
//
//     // Check global scope (root level)
//     return allFields.firstWhere((f) => f.name == dependencyName, orElse: () => this).fullPath;
//   }
//
// }