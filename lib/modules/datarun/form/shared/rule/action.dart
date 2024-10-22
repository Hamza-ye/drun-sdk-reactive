import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/rule/rule_action.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';

@immutable
class RuleAction with EquatableMixin {
  final String expression;
  final ActionType action;
  final IMap<String, String> message;
  final dynamic assignedValue;

  // final bool isInEffect;

  RuleAction({
    required this.action,
    this.assignedValue,
    this.message = const IMapConst({}),
    required this.expression,
    // this.isInEffect = false,
  });

  // {
  //   this.message.addAll(message);
  // }

  @override
  List<Object?> get props => [
        expression,
        action,
        assignedValue,
        message /*, isInEffect*/
      ];

  factory RuleAction.fromJson(Map<String, dynamic> json) {
    final message = json['message'] != null
        ? Map<String, String>.from(json['message'] is String
            ? jsonDecode(json['message'])
            : json['message'])
        : <String, String>{};

    return RuleAction(
        expression: json['expression'],
        action: ActionType.getAction(json['action']),
        assignedValue: json['assignedValue'],
        message: IMap(message));
  }

  Map<String, dynamic> toJson() {
    return {
      'expression': expression,
      'action': action.name,
      'message': jsonEncode(message.unlockView),
      'assignedValue': assignedValue,
      // 'isInEffect': isInEffect,
    };
  }

  RuleAction copyWith({
    String? expression,
    ActionType? action,
    IMap<String, String>? message,
    dynamic assignedValue,
    // bool? shouldApplyAction,
  }) {
    return RuleAction(
      expression: expression ?? this.expression,
      action: action ?? this.action,
      message: message ?? this.message,
      assignedValue: assignedValue ?? this.assignedValue,
      // isInEffect: shouldApplyAction ?? this.isInEffect,
    );
  }
}
