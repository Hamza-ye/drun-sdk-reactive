import 'package:d2_remote/modules/datarun/form/shared/field_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/template_extensions/form_traverse_extension.dart';

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

    if (isSelectType) {
      if (withChoiceFilter) {
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
