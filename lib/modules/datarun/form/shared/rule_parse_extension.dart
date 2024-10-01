import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';

/// Field Template inside A form template fields can
/// FieldTemplate is an element configuration, A FieldInstance,
/// a SectionInstance, or repeatedSectionInstance all hold their configuration as
/// a FieldTemplate.
extension FieldTemplateDependencies on FieldTemplate {
  /// parse the rule expression dependencies `field names` from the rules expressions
  /// i.e #{transactionQuestion} = 'supply' && #{itemType} = 'ACT80'
  /// dependencies will be ['transactionQuestion', 'itemType']
  List<String> get dependencies {
    List<String> dependencySet = [];
    for (final rule in rules) {
        final ruleDependencies = rule.dependencies;
        dependencySet.addAll(ruleDependencies);
    }
    return dependencySet.toSet().toList();
  }

  /// parse the dependencies names from the choiceFilter expression
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
