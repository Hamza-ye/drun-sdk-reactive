import 'package:d2_remote/modules/datarun/form/shared/form_option.entity.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule/expression_provider.dart';
import 'package:expressions/src/expressions.dart';

class ChoiceFilter
    implements ExpressionProvider, EvaluationEngine<List<FormOption>> {
  final List<FormOption> options;
  final String? expression;

  const ChoiceFilter({required this.expression, this.options = const []});

  @override
  Expression getExpression() {
    return Expression.parse(expression!);
  }

  @override
  List<FormOption> evaluate([Map<String, dynamic>? context]) {
    if (expression == null) {
      return options;
    }

    List<FormOption> result = options
        .where((option) =>
            evaluator.eval(getExpression(), option.toContext()..addAll(context ?? {})))
        .toList();

    return result;
  }
}
