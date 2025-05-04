import 'package:d_sdk/core/form/tree/tree_element.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';

class ElementTreeService {
  static String? getParentPath<T extends TreeElement>(T element) {
    final parentPath = element.path!.split('.')..removeLast();
    if (parentPath.isEmpty) return null; // Root node has no parent
    return parentPath.join('.');
  }

  static String _normalizedPath(String path) =>
      path.endsWith('.') ? path.substring(0, path.length - 1) : path;

  static T? getParent<T extends TreeElement>(
      String fieldPath, List<T> flatFields) {
    final parentPath = fieldPath.split('.')..removeLast();
    if (parentPath.isEmpty) return null; // Root node has no parent
    return flatFields.firstOrNullWhere((n) => n.path == parentPath.join('.'));
  }

  static List<T> getImmediateChildren<T extends TreeElement>(
      String path, List<T> flatFields) {
    final normalizedPath = _normalizedPath(path);

    final depth = normalizedPath.split('.').length + 1;
    final childElements = flatFields.where((node) {
      return node.path!.startsWith('$normalizedPath.') &&
          node.path!.split('.').length == depth;
    }).toList();
    return childElements;
  }

  /// Get ancestors of a specific path
  static List<T> getAncestors<T extends TreeElement>(
      String path, List<T> flatFields) {
    final ancestors = <T>[];
    while (path != '') {
      final parent = getParent<T>(path, flatFields);
      if (parent != null) {
        ancestors.add(parent);
        path = parent.path!;
      } else {
        break;
      }
    }
    return ancestors.reversed.toList();
  }

  /// Get first descendant by its id
  static T? getFirstById<T extends TreeElement>(String id, List<T> flatFields) {
    final element =
        flatFields.firstOrNullWhere((node) => node.path!.endsWith('$id'));
    return element;
  }

  /// Get element by path
  static T? getTemplateByPath<T extends TreeElement>(
      String path, List<T> flatFields) {
    return flatFields.firstOrNullWhere((element) => element.path == path);
  }

  /// Get all descendants of a specific path
  static List<T> getDescendants<T extends TreeElement>(
      String path, List<T> flatFields) {
    return flatFields.where((node) => node.path!.startsWith('$path.')).toList();
  }

  /// Get children of a specific path
  static List<T> getChildren<T extends TreeElement>(
      String path, List<T> flatFields) {
    final normalizedPath = _normalizedPath(path);

    return flatFields
        .where((node) =>
            node.path!.startsWith('$normalizedPath.') &&
            node.path!.split('.').length ==
                normalizedPath.split('.').length + 1)
        .toList();
  }

  /// Get ImmediateChildren of a specific path
  static List<T> getChildrenOfType<T extends TreeElement>(
      String path, List<T> flatFields) {
    final normalizedPath =
        path.endsWith('.') ? path.substring(0, path.length - 1) : path;

    return flatFields
        .where((node) =>
            node.path!.startsWith('$normalizedPath.') &&
            node.path!.split('.').length ==
                normalizedPath.split('.').length + 1)
        .whereType<T>()
        .toList();
  }

  static T? getScopedDependencyById<T extends TreeElement>(
      String id, String currentPath, List<T> flatFields) {
    final pathSegments = currentPath.split('.');

    // upwards in the path
    for (int i = pathSegments.length - 1; i >= 0; i--) {
      final currentPathSegment = pathSegments.sublist(0, i + 1).join('.');

      // in the current scope
      final element =
          getTemplateByPath<T>(currentPathSegment + '.' + id, flatFields);
      if (element != null) {
        return element;
      }
    }

    // If not found, check the global scope
    final rootElements =
        flatFields.where((element) => element.path!.split('.').length == 1);

    for (final rootElement in rootElements) {
      final scopedElement = getScopedElement<T>(rootElement, id, flatFields);
      if (scopedElement != null) {
        return scopedElement;
      }
    }

    return null;
  }

  static T? getScopedElement<T extends TreeElement>(
      T rootElement, String id, List<T> flatFields) {
    if (rootElement.id == id) {
      return rootElement;
    }

    for (final child in getDescendants<T>(rootElement.path!, flatFields)) {
      final element = getScopedElement<T>(child, id, flatFields);
      if (element != null) {
        return element;
      }
    }
    return null;
  }

// T? getScopedDependencyByName(String name, String currentPath, List<T> allNodes) {
//   final pathSegments = currentPath.split('.');
//
//   // upwards in the path
//   for (int i = pathSegments.length - 1; i >= 0; i--) {
//     final currentPathSegment = pathSegments.sublist(0, i + 1).join('.');
//
//     // in the current scope
//     final element = getTemplateByPath(currentPathSegment + '.' + name);
//     if (element != null) {
//       return element;
//     }
//   }
//
//   // If not found, check the global scope
//   final rootElements = flatFields.values
//       .where((element) => element.path!.split('.').length == 1);
//
//   for (final rootElement in rootElements) {
//     final scopedElement = getScopedElement(rootElement, name);
//     if (scopedElement != null) {
//       return scopedElement;
//     }
//   }
//
//   return null;
// }
//
// T? getScopedElement(T rootElement, String name) {
//   if (rootElement.name == name) {
//     return rootElement;
//   }
//
//   if (rootElement.children.isNotEmpty) {
//     for (final child in getDescendants(rootElement.path!)) {
//       final element = getScopedElement(child, name);
//       if (element != null) {
//         return element;
//       }
//     }
//   }
//
//   // // Check if it is a repeat section with children
//   // if (rootElement is RepeatSectionElement) {
//   //   for (final child in rootElement.fields) {
//   //     final element = getScopedElement(child as T, name);
//   //     if (element != null) {
//   //       return element;
//   //     }
//   //   }
//   // }
//
//   return null;
// }

// /// Get element by name (nearest in scope)
// T? getScopedDependencyByName2(String name, String currentPath, List<T> allNodes) {
//   final pathSegments = currentPath.split('.');
//
//   // Look for the element in the current hierarchy, moving up through ancestors
//   for (int i = pathSegments.length - 1; i >= 0; i--) {
//     final currentPathSegment = pathSegments.sublist(0, i + 1).join('.');
//     final scopedElement = getTemplateByPath(currentPathSegment + '.' + name);
//
//     if (scopedElement != null) {
//       return scopedElement;
//     }
//   }
//
//   // Check for siblings (elements sharing the same parent path)
//   final parentPath = pathSegments.length > 1
//       ? pathSegments.sublist(0, pathSegments.length - 1).join('.')
//       : ''; // Root level has no parent path
//   final siblingElement = flatFields.values.firstOrNullWhere((element) =>
//       element.name == name &&
//       element.path!.startsWith(parentPath) &&
//       element.path != currentPath && // Not the same element
//       element.path!.split('.').length ==
//           currentPath.split('.').length); // Same level
//
//   if (siblingElement != null) {
//     return siblingElement;
//   }
//
//   // Check global scope (elements at the root level)
//   return flatFields.values.firstOrNullWhere((element) =>
//       element.name == name && element.path!.split('.').length == 1);
// }
}
