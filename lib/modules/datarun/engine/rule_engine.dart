import 'package:d2_remote/modules/datarun/form/shared/rule.dart';
import 'package:expressions/expressions.dart';

class RuleEngine {
  Map<String, Map<String, dynamic>> formState;
  late Map<String, dynamic> context;
  final evaluator = const ExpressionEvaluator();

  RuleEngine({required this.formState}) {
    context = adaptFormState(formState);
  }

  dynamic evaluateExpression(String expressionString) {
    Expression expression = Expression.parse(expressionString);
    var result = evaluator.eval(expression, context);
    return result;
  }

  void applyRules(List<Rule> rules) {
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
        formState[rule.field]?['visible'] = true;
        break;
      case 'hide':
        formState[rule.field]?['visible'] = false;
        break;
      case 'error':
        formState[rule.field]?['error'] = rule.message;
        break;
      case 'warning':
        // formState[rule.field]?['warning'] = rule.message;
        if (formState[rule.field]?['warning'] != null) {
          formState[rule.field]?.remove('warning');
        }
        formState[rule.field]?['warning'] = rule.message;
        // formState.get(rule.field);
        break;
      // Add more actions as needed
    }
  }

  Map<String, dynamic> adaptFormState(Map<String, dynamic> formState) {
    return formState.map((key, value) => MapEntry(key, value['value']));
  }
}
