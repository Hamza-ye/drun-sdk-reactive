import 'package:d_sdk/core/form/tree/tree_element.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';

mixin TemplatePathWalkingService<T extends TreeElement> {
  Map<String, T> get flatFields;

  String? getParentPath(T element) {
    final parentPath = element.path!.split('.')..removeLast();
    if (parentPath.isEmpty) return null; // Root node has no parent
    return parentPath.join('.');
  }

  String _normalizedPath(String path) =>
      path.endsWith('.') ? path.substring(0, path.length - 1) : path;

  T? getParent(String fieldPath) {
    final parentPath = fieldPath.split('.')..removeLast();
    if (parentPath.isEmpty) return null; // Root node has no parent
    return flatFields.values
        .firstOrNullWhere((n) => n.path == parentPath.join('.'));
  }

  List<T> getImmediateChildren(String path) {
    final normalizedPath = _normalizedPath(path);

    final depth = normalizedPath.split('.').length + 1;
    final childElements = flatFields.values.where((node) {
      return node.path!.startsWith('$normalizedPath.') &&
          node.path!.split('.').length == depth;
    }).toList();
    return childElements;
  }

  /// Get ancestors of a specific path
  List<T> getAncestors(String path) {
    final ancestors = <T>[];
    while (path != '') {
      final parent = getParent(path);
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
  T? getFirstById(String id) {
    final element = flatFields.values
        .firstOrNullWhere((node) => node.path!.endsWith('$id'));
    return element;
  }

  /// Get element by path
  T? getTemplateByPath(String path) {
    return flatFields.values
        .firstOrNullWhere((element) => element.path == path);
  }

  /// Get all descendants of a specific path
  List<T> getDescendants(String path) {
    return flatFields.values
        .where((node) => node.path!.startsWith('$path.'))
        .toList();
  }

  /// Get children of a specific path
  List<T> getChildren(String path) {
    final normalizedPath = _normalizedPath(path);

    return flatFields.values
        .where((node) =>
            node.path!.startsWith('$normalizedPath.') &&
            node.path!.split('.').length ==
                normalizedPath.split('.').length + 1)
        .toList();
  }

  /// Get ImmediateChildren of a specific path
  List<T> getChildrenOfType<E extends T>(String path) {
    final normalizedPath =
        path.endsWith('.') ? path.substring(0, path.length - 1) : path;

    return flatFields.values
        .where((node) =>
            node.path!.startsWith('$normalizedPath.') &&
            node.path!.split('.').length ==
                normalizedPath.split('.').length + 1)
        .whereType<E>()
        .toList();
  }

  T? getScopedDependencyById(String id, String currentPath) {
    final pathSegments = currentPath.split('.');

    // upwards in the path
    for (int i = pathSegments.length - 1; i >= 0; i--) {
      final currentPathSegment = pathSegments.sublist(0, i + 1).join('.');

      // in the current scope
      final element = getTemplateByPath(currentPathSegment + '.' + id);
      if (element != null) {
        return element;
      }
    }

    // If not found, check the global scope
    final rootElements = flatFields.values
        .where((element) => element.path!.split('.').length == 1);

    for (final rootElement in rootElements) {
      final scopedElement = getScopedElement(rootElement, id);
      if (scopedElement != null) {
        return scopedElement;
      }
    }

    return null;
  }

  T? getScopedElement(T rootElement, String id) {
    if (rootElement.id == id) {
      return rootElement;
    }

    for (final child in getDescendants(rootElement.path!)) {
      final element = getScopedElement(child, id);
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
