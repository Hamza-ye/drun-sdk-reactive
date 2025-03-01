import 'package:d2_remote/core/utilities/list_extensions.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/template.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/section_template.entity.dart';

extension FormTraverseExtension on FormVersion {
  IMap<String, Template> get formFlatFields {
    if ((flattenFieldsMap ?? IMap()).isEmpty) {
      final allFields = sections.addAll(fieldsConf);
      flattenFieldsMap = allFields.asMap().map((k, v) => MapEntry(v.path!, v));
    }
    return flattenFieldsMap!;
  }

  IList<Template> get formTreeFields {
    if ((treeFields ?? IList()).isEmpty) {
      if (formFlatFields.isEmpty) return treeFields = IList();

      Map<String, Template> treeNodes = {};
      List<Template> roots = [];

      List<String> sortedPaths = formFlatFields.keys.toList()
        ..sort((a, b) => a.length.compareTo(b.length));

      for (String path in sortedPaths) {
        Template template = formFlatFields[path]!;
        List<String> parts = path.split('.');

        // String name = parts.last;

        Template node = template;
        treeNodes[path] = template;

        if (parts.length == 1) {
          // Root node (direct child of the global level)
          roots.add(node);
        } else {
          String parentPath = parts.sublist(0, parts.length - 1).join('.');
          Template? parent = treeNodes[parentPath];
          if (parent != null) {
            treeNodes[parentPath] = (parent as SectionTemplate)
                .copyWith(treeFields: parent.treeFields.add(node));
          } else {
            // If a parent is missing, treat this as a new root
            roots.add(node);
          }
        }
      }

      treeFields = roots.lock;
    }

    return treeFields!;
  }

  /// Get element by path
  Template? getTemplateByPath(String path) {
    return formFlatFields[path];
  }

  // Template? findFieldByPath(String path) {
  //   for (var field in formTreeFields) {
  //     var found = field.findFieldByPath(path);
  //     if (found != null) return found;
  //   }
  //   return null;
  // }

  /// Get children of a specific path
  List<Template> getChildren(String path) {
    final normalizedPath =
        path.endsWith('.') ? path.substring(0, path.length - 1) : path;

    return formFlatFields.values
        .where((field) =>
            field.path!.startsWith('$normalizedPath.') &&
            field.path!.split('.').length == path.split('.').length + 1)
        .toList();
  }

  /// Get descendants of a specific path
  List<Template> getChildrenOfType<E extends Template>(String path) {
    return formFlatFields.values
        .where((field) => field.path!.startsWith('$path.'))
        .whereType<E>()
        .toList();
  }

  /// Get descendants of a specific path
  IMap<String, Template> getDescendants(String path, [ValueType? type]) {
    return formFlatFields.where((k, field) =>
        k.startsWith('$path.') && (type == null || field.type == type));
  }

  Template? getScopedDependencyByName(String name, String currentPath) {
    final pathSegments = currentPath.split('.');

    // upwards in the path
    for (int i = pathSegments.length - 1; i >= 0; i--) {
      final currentPathSegment = pathSegments.sublist(0, i + 1).join('.');

      // in the current scope
      final element = getTemplateByPath(currentPathSegment + '.' + name);
      if (element != null) {
        return element;
      }
    }

    // If not found, check the global scope
    final rootElements = formFlatFields.values
        .where((element) => element.path!.split('.').length == 1);

    for (final rootElement in rootElements) {
      final scopedElement = getScopedElement(rootElement, name);
      if (scopedElement != null) {
        return scopedElement;
      }
    }

    return null;
  }

  Template? getScopedElement(Template rootElement, String name) {
    if (rootElement.name == name) {
      return rootElement;
    }

    for (final child in getDescendants(rootElement.path!).values) {
      final element = getScopedElement(child, name);
      if (element != null) {
        return element;
      }
    }
    return null;
  }
}

extension PathMaterializedFormUtil on FormVersion {
  List<Template> getImmediateChildren(String nodePath) {
    final depth = nodePath.split('.').length + 1;
    return formFlatFields.values.where((node) {
      return node.path!.startsWith('$nodePath.') &&
          node.path!.split('.').length == depth;
    }).toList();
  }

  Template? getParent(String fieldPath) {
    final parentPath = fieldPath.split('.')..removeLast();
    if (parentPath.isEmpty) return null; // Root node has no parent
    return formFlatFields.values
        .firstOrNullWhere((n) => n.path == parentPath.join('.'));
  }

// List<Template> getSiblings(String fieldPath) {
//   final parentPath = fieldPath.split('.')..removeLast();
//   if (parentPath.isEmpty) return []; // Root node has no siblings
//   final depth = fieldPath.split('.').length;
//   return formFlatFields.values.where((n) {
//     return n.path!.split('.').length == depth &&
//         n.path!.startsWith(parentPath.join('.')) &&
//         n.path != fieldPath;
//   }).toList();
// }
}

extension FieldTemplatePathExtension on Template {
  String? get parentPath {
    final parentPath = path?.split('.')?..removeLast();
    if ((parentPath ?? []).isEmpty) return null; // Root node has no parent
    return parentPath!.join('.');
  }

  bool get isSectionType => (type?.isSelectType ?? false);

  bool get isSection => (type?.isSection ?? false);

  bool get isRepeat => (type?.isRepeatSection ?? false);

  bool get isSelectType => (type?.isSelectType ?? false);

  bool get isCalculate => (type?.isCalculate ?? false);

  bool get isTextType => (type?.isText ?? false);

  // bool get withChoiceFilter => choiceFilter != null;

  bool get isNumeric => (type?.isNumeric ?? false);

// Template? findFieldByPath(String path, [ValueType? valueType]) {
//   if (this.path == path) return this;
//   for (var field in treeFields) {
//     var found = field.findFieldByPath(path);
//     if (found != null) return found;
//   }
//   return null;
// }

// Template? findFieldByPathAndType(String path, ValueType type) {
//   if (this.path == path && this.type == type) return this;
//   for (var field in treeFields) {
//     var found = field.findFieldByPathAndType(path, type);
//     if (found != null) return found;
//   }
//   return null;
// }
//
// Template? findFieldByName(String name) {
//   if (this.name == name) return this;
//   for (var field in treeFields) {
//     var found = field.findFieldByName(name);
//     if (found != null) return found;
//   }
//   return null;
// }
}
