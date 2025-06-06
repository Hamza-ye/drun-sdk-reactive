// import 'package:d_sdk/modules/datarun/form/shared/element_template/element_template.entity.dart';
//
// extension TemplateRuleDependencies on FieldTemplate {
//   List<String> get dependencies {
//     List<String> dependencySet = [];
//     for (final rule in rules) {
//       final ruleDependencies = rule.ruleAction.dependencies;
//       dependencySet.addAll(ruleDependencies);
//     }
//     return dependencySet.toSet().toList();
//   }
// }
//
// extension TemplateFilterDependencies on FieldTemplate {
//   /// from the choiceFilter expression
//   List<String> get choicesDependencies {
//     List<String> dependencyList = [];
//     final fieldPattern = RegExp(r'#\{(.*?)\}');
//
//     if (type.isSelectType) {
//       if (this.choiceFilter != null) {
//         final filterDependencies = fieldPattern
//             .allMatches(choiceFilter!)
//             .map((match) => match.group(1)!)
//             .toList();
//         dependencyList.addAll(filterDependencies);
//       }
//
//       return dependencyList.toSet().toList();
//     }
//
//     return [];
//   }
//
//   String? get evalChoiceFilterExpression =>
//       choiceFilter?.replaceAll('#{', '').replaceAll('}', '');
// }
