import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';

extension FieldTemplateDependencies on FieldTemplate {
  List<String> get dependencies {
    List<String> dependencySet = [];
    final fieldPattern = RegExp(r'#\{(.*?)\}');

    for (final rule in rules) {
      // if (rule.expression != null) {
        final ruleDependencies = rule.dependencies;
        dependencySet.addAll(ruleDependencies);
      // }
    }
    return dependencySet.toSet().toList();
  }

  List<String> get filterDependencies {
    List<String> dependencyList = [];
    final fieldPattern = RegExp(r'#\{(.*?)\}');

    if (type.isSelectType) {
      if (choiceFilter != null) {
        final filterDependencies = fieldPattern
            .allMatches(choiceFilter!)
            .map((match) => match.group(1)!)
            .toList();
        dependencyList.addAll(filterDependencies);
      }

      return dependencyList.toSet().toList();
    }

    return [];
  }

  String? get evalChoiceFilter =>
      choiceFilter?.replaceAll("#{", "").replaceAll("}", "");

// /// Map<expression, Rule>
// Map<String, Rule> expressionMap() {
//   return Map<String, Rule>.fromIterable(rules,
//       key: (rule) => rule.expression, value: (rule) => rule);
// }

// /// Map<fieldName, List<expression>>
// Map<String, List<String>> expressionMap() {
//   return Map<String, List<String>>.fromIterable(rules,
//       key: (rule) => rule.expression, value: (rule) => rule);
// }
}

extension RuleDependencies on Rule {
  List<String> get dependencies {
    if (expression != null) {
      final fieldPattern = RegExp(r'#\{(.*?)\}');

      return fieldPattern
          .allMatches(expression!)
          .map((match) => match.group(1)!)
          .toSet()
          .toList();
    }
    return [];
  }

  String? get evalExpression =>
      expression?.replaceAll("#{", "").replaceAll("}", "");
}
