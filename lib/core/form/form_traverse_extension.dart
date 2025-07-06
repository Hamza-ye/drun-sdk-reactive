import 'package:d_sdk/database/app_database.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import 'element_template/element_template.dart';

extension FormTraverseExtension on FormTemplateVersion {
  Map<String, Template> get flatFields =>
      IMap.fromIterable([...sections, ...fields].where((t) => t.path != null),
          keyMapper: (template) => template.path!,
          valueMapper: (template) => template).unlockView;

//   /// Get element by path
//   Template? getTemplateByPath(String path) {
//     return flatFields[path];
//   }
//
//   /// Get children of a specific path
//   List<Template> getChildren(String path) {
//     final normalizedPath =
//         path.endsWith('.') ? path.substring(0, path.length - 1) : path;
//
//     return flatFields.values
//         .where((field) =>
//             field.path!.startsWith('$normalizedPath.') &&
//             field.path!.split('.').length == path.split('.').length + 1)
//         .toList();
//   }
//
//   /// Get descendants of a specific path
//   List<Template> getChildrenOfType<E extends Template>(String path) {
//     return flatFields.values
//         .where((field) => field.path!.startsWith('$path.'))
//         .whereType<E>()
//         .toList();
//   }
//
//   /// Get descendants of a specific path
//   List<Template> getDescendants(String path, [ValueType? type]) {
//     return flatFields.values
//         .where((field) =>
//             field.path!.startsWith('$path.') &&
//             (type == null || field.type == type))
//         .toList();
//   }
//
//   Template? getScopedDependencyById(String id, String currentPath) {
//     final pathSegments = currentPath.split('.');
//
//     // upwards in the path
//     for (int i = pathSegments.length - 1; i >= 0; i--) {
//       final currentPathSegment = pathSegments.sublist(0, i + 1).join('.');
//
//       // in the current scope
//       final element = getTemplateByPath(currentPathSegment + '.' + id);
//       if (element != null) {
//         return element;
//       }
//     }
//
//     // If not found, check the global scope
//     final rootElements = flatFields.values
//         .where((element) => element.path!.split('.').length == 1);
//
//     for (final rootElement in rootElements) {
//       final scopedElement = getScopedElement(rootElement, id);
//       if (scopedElement != null) {
//         return scopedElement;
//       }
//     }
//
//     return null;
//   }
//
//   Template? getScopedElement(Template rootElement, String id) {
//     if (rootElement.id == id) {
//       return rootElement;
//     }
//
//     for (final child in getDescendants(rootElement.path!)) {
//       final element = getScopedElement(child, id);
//       if (element != null) {
//         return element;
//       }
//     }
//     return null;
//   }
// }
//
// extension PathMaterializedFormUtil on DataFormTemplateVersion {
//   List<Template> getImmediateChildren(String nodePath) {
//     final depth = nodePath.split('.').length + 1;
//     return flatFields.values.where((node) {
//       return node.path!.startsWith('$nodePath.') &&
//           node.path!.split('.').length == depth;
//     }).toList();
//   }
//
//   Template? getParent(String fieldPath) {
//     final parentPath = fieldPath.split('.')..removeLast();
//     if (parentPath.isEmpty) return null; // Root node has no parent
//     return flatFields.values
//         .firstOrNullWhere((n) => n.path == parentPath.join('.'));
//   }
}
//
// extension FieldTemplatePathExtension on Template {
//   String? get parentPath {
//     final parentPath = path!.split('.')..removeLast();
//     if (parentPath.isEmpty) return null; // Root node has no parent
//     return parentPath.join('.');
//   }
//
//   bool get isNumeric => (type?.isNumeric ?? false);
// }
