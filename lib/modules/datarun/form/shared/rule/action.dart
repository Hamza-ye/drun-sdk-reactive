import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/rule/rule_action.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class RuleAction {
  // final String rule;
  final ActionType action;
  final Map<String, String> message = {};
  final dynamic assignedValue;

  RuleAction({
    required this.action,
    this.assignedValue,
    Map<String, String> message = const {},
    // required this.rule,
  }) {
    this.message.addAll(message);
  }

  factory RuleAction.fromJson(Map<String, dynamic> json) {
    return RuleAction(
        // rule: json['rule'],
        action: ActionType.getAction(json['action']),
        assignedValue: json['assignedValue'],
        //removePlaceholders(expression),
        message: json['message'] != null
            ? Map<String, String>.from(json['message'] is String
                ? jsonDecode(json['message'])
                : json['message'])
            : {});
  }

  Map<String, dynamic> toJson() {
    return {
      // 'rule': rule,
      'action': action.name,
      'message': jsonEncode(message),
      'assignedValue': assignedValue,
    };
  }
}
