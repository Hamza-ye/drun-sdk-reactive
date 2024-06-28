import 'package:d2_remote/modules/datarun/form/shared/dynamic_form_field.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:fast_expressions/fast_expressions.dart';
import 'package:fast_expressions/fast_expressions.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class RuleEngine {
  Map<String, dynamic> formState;
  late Map<String, dynamic> context;

  RuleEngine({required this.formState}) {
    context = adaptFormState(formState);
  }

  dynamic evaluateExpression(String expression) {
    // Use fast_expressions to evaluate the expression in the context of formState
    final result = parseExpression(expression, context: context)();
    return result;
  }

  void applyRules(List<Rule> rules) {
    final kid = [];
    for (var rule in rules) {
      final result = evaluateExpression(rule.expression!);
      if (result) {
        _applyAction(rule);
      }
    }
  }

  void _applyAction(Rule rule) {
    switch (rule.action) {
      case 'show':
        formState[rule.field]['visible'] = true;
        break;
      case 'hide':
        formState[rule.field]['visible'] = false;
        break;
      case 'error':
        formState[rule.field]['error'] = rule.message;
        break;
      case 'warning':
        formState[rule.field]['warning'] = rule.message;
        break;
    // Add more actions as needed
    }
  }

  Map<String, dynamic> adaptFormState(Map<String, dynamic> formState) {
    return formState.map((key, value) => MapEntry(key, value['value']));
  }
}
