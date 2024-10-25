import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule/rule.dart';

extension FieldTemplateDependencies on FieldTemplate {
  List<String> get dependencies {
    List<String> dependencySet = [];
    for (final rule in rules) {
      final ruleDependencies = rule.ruleAction.dependencies;
      dependencySet.addAll(ruleDependencies);
    }
    return dependencySet.toSet().toList();
  }

  /// from the choiceFilter expression
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

  String? get evalChoiceFilterExpression =>
      choiceFilter?.replaceAll("#{", "").replaceAll("}", "");
}
//
// extension RuleDependencies on Rule {
//   List<String> get dependencies {
//     if (expression != null) {
//       final fieldPattern = RegExp(r'#\{(.*?)\}');
//
//       return fieldPattern
//           .allMatches(expression!)
//           .map((match) => match.group(1)!)
//           .toSet()
//           .toList();
//     }
//     return [];
//   }
//
//   String? get evalExpression =>
//       expression.replaceAll("#{", "").replaceAll("}", "");
// }

///////

