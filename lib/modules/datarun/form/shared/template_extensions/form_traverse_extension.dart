import 'package:d2_remote/core/utilities/list_extensions.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template/template.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';

extension FormTraverseExtension on FormVersion {
  Map<String, Template> get formFlatFields {
    if (flattenFieldsMap.isEmpty) {
      List<Template> flatFields = [];
      void traverse(Template field) {
        flatFields.add(field);
        for (var subField in field.fields) {
          traverse(subField);
        }
      }

      fields.forEach(traverse);
      flattenFieldsMap = flatFields.asMap().map((k, v) => MapEntry(v.path!, v));
    }
    return flattenFieldsMap;
  }

  Template? findFieldByPath(String path) {
    for (var field in fields) {
      var found = field.findFieldByPath(path);
      if (found != null) return found;
    }
    return null;
  }

  Template? getDescendantsOfType(String path, ValueType type) {
    for (var field in fields) {
      var found = field.findFieldByPathAndType(path, type);
      if (found != null) return found;
    }
    return null;
  }

  List<String> getAllPaths() {
    List<String> paths = [];
    void traverse(Template field) {
      paths.add(field.path!);
      for (var subField in field.fields) {
        traverse(subField);
      }
    }

    fields.forEach(traverse);
    return paths;
  }
}

extension PathMaterializedFormUtil on FormVersion {
  List<Template> getDescendants(String nodePath) {
    return formFlatFields.values
        .where((node) => node.path!.startsWith('$nodePath.'))
        .toList();
  }

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

  List<Template> getSiblings(String fieldPath) {
    final parentPath = fieldPath.split('.')..removeLast();
    if (parentPath.isEmpty) return []; // Root node has no siblings
    final depth = fieldPath.split('.').length;
    return formFlatFields.values.where((n) {
      return n.path!.split('.').length == depth &&
          n.path!.startsWith(parentPath.join('.')) &&
          n.path != fieldPath;
    }).toList();
  }
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

  bool get isTextType => (type?.isText ?? false);

  // bool get withChoiceFilter => choiceFilter != null;

  bool get isNumeric => (type?.isNumeric ?? false);

  Template? findFieldByPath(String path, [ValueType? valueType]) {
    if (this.path == path) return this;
    for (var field in fields) {
      var found = field.findFieldByPath(path);
      if (found != null) return found;
    }
    return null;
  }

  Template? findFieldByPathAndType(String path, ValueType type) {
    if (this.path == path && this.type == type) return this;
    for (var field in fields) {
      var found = field.findFieldByPathAndType(path, type);
      if (found != null) return found;
    }
    return null;
  }

  Template? findFieldByName(String name) {
    if (this.name == name) return this;
    for (var field in fields) {
      var found = field.findFieldByName(name);
      if (found != null) return found;
    }
    return null;
  }
}
