import 'package:d2_remote/core/utilities/list_extensions.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/field_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';

extension FormTraverseExtension on FormVersion {
  Map<String, FieldTemplate> get formFlatFields {
    if (formFieldsMapCache.isEmpty) {
      List<FieldTemplate> flatFields = [];
      void traverse(FieldTemplate field) {
        flatFields.add(field);
        for (var subField in field.fields) {
          traverse(subField);
        }
      }

      fields.forEach(traverse);
      formFieldsMapCache =
          flatFields.asMap().map((k, v) => MapEntry(v.path!, v));
    }
    return formFieldsMapCache;
  }

  FieldTemplate? findFieldByPath(String path) {
    for (var field in fields) {
      var found = field.findFieldByPath(path);
      if (found != null) return found;
    }
    return null;
  }

  FieldTemplate? getDescendantsOfType(String path, ValueType type) {
    for (var field in fields) {
      var found = field.findFieldByPathAndType(path, type);
      if (found != null) return found;
    }
    return null;
  }

  List<String> getAllPaths() {
    List<String> paths = [];
    void traverse(FieldTemplate field) {
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
  List<FieldTemplate> getDescendants(String nodePath) {
    return formFlatFields.values
        .where((node) => node.path!.startsWith('$nodePath.'))
        .toList();
  }

  List<FieldTemplate> getImmediateChildren(String nodePath) {
    final depth = nodePath.split('.').length + 1;
    return formFlatFields.values.where((node) {
      return node.path!.startsWith('$nodePath.') &&
          node.path!.split('.').length == depth;
    }).toList();
  }

  FieldTemplate? getParent(String fieldPath) {
    final parentPath = fieldPath.split('.')..removeLast();
    if (parentPath.isEmpty) return null; // Root node has no parent
    return formFlatFields.values
        .firstOrNullWhere((n) => n.path == parentPath.join('.'));
  }

  List<FieldTemplate> getSiblings(String fieldPath) {
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


extension FieldTemplatePathExtension on FieldTemplate {
  String? get parentPath {
    final parentPath = path?.split('.')?..removeLast();
    if ((parentPath ?? []).isEmpty) return null; // Root node has no parent
    return parentPath!.join('.');
  }

  bool get isSectionType => type.isSelectType;

  bool get isSection => type.isSection;

  bool get isRepeat => type.isRepeatSection;

  bool get isSelectType => type.isSelectType;

  bool get isTextType => type.isText;

  bool get withChoiceFilter => choiceFilter != null;

  FieldTemplate? findFieldByPath(String path, [ValueType? valueType]) {
    if (this.path == path) return this;
    for (var field in fields) {
      var found = field.findFieldByPath(path);
      if (found != null) return found;
    }
    return null;
  }

  FieldTemplate? findFieldByPathAndType(String path, ValueType type) {
    if (this.path == path && this.type == type) return this;
    for (var field in fields) {
      var found = field.findFieldByPathAndType(path, type);
      if (found != null) return found;
    }
    return null;
  }

  FieldTemplate? findFieldByName(String name) {
    if (this.name == name) return this;
    for (var field in fields) {
      var found = field.findFieldByName(name);
      if (found != null) return found;
    }
    return null;
  }
}