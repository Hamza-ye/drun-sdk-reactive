import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';

extension FormTemplateExtension on FormVersion {
  // String? resolveDependencyPath(String fieldPath, String dependencyName) {
  //   // Check in current scope
  //   for (var field in fields) {
  //     if (field.name == dependencyName) {
  //       return field.path;
  //     }
  //   }
  //
  //
  //   // Check in parent scopes
  //   if (parentPath != null) {
  //     var parent = fields.firstWhere((f) => f.path == parentPath, orElse: () => this);
  //     return parent.resolveDependencyPath(dependencyName, allFields);
  //   }
  //
  //   // Check global scope (root level)
  //   return allFields.firstWhere((f) => f.name == dependencyName, orElse: () => this).path;
  // }
}
