import 'dart:convert';

import 'package:d2_remote/modules/datarun/form/shared/rule_action.dart';

class Rule {
  final String field;

  final String? expression;

  final Action? action;
  final Map<String, String>? message;
  final FilterInfo? filterInfo;
  final dynamic assignedValue;

  Rule({required this.field,
      this.expression,
      this.action,
      this.message,
      this.filterInfo,
      this.assignedValue});

  factory Rule.fromJson(Map<String, dynamic> json) {
    return Rule(
        field: json['field'],
        action: Action.getAction(json['action']),
        // action: json['action'],
        // dependencies: parseDependencies(json['expression']),
        expression: json['expression'],
        //removePlaceholders(expression),
        message: json['message'] != null
            ? Map<String, String>.from(json['message'] is String
                ? jsonDecode(json['message'])
                : json['message'])
            : null,
        filterInfo: json['filterInfo'] != null
            ? FilterInfo.fromJson(json['filterInfo'] is String
                ? jsonDecode(json['filterInfo'])
                : json['filterInfo'])
            : null);
  }

  Map<String, dynamic> toJson() {
    return {
      'field': field,
      'expression': expression,
      'action': action?.name,
      'message': message != null ? jsonEncode(message) : null,
      'assignedValue': assignedValue,
      'filterInfo': filterInfo != null ? filterInfo!.toJson() : null,
    };
  }
}

class FilterInfo {
  final List<String>? optionsToHide;
  final List<String>? optionsToShow;

  FilterInfo({
    required this.optionsToHide,
    required this.optionsToShow,
  });

  factory FilterInfo.fromJson(Map<String, dynamic> json) {
    final optionsToHide = json['optionsToHide'] != null
        ? json['optionsToHide'].runtimeType == String
            ? jsonDecode(json['optionsToHide']).cast<String>()
            : json['optionsToHide'].cast<String>()
        : null;

    final optionsToShow = json['optionsToShow'] != null
        ? json['optionsToShow'].runtimeType == String
            ? jsonDecode(json['optionsToShow']).cast<String>()
            : json['optionsToShow'].cast<String>()
        : null;

    return FilterInfo(
      optionsToHide: optionsToHide,
      optionsToShow: optionsToShow,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'optionsToHide': optionsToHide != null ? jsonEncode(optionsToHide) : null,
      'optionsToShow': optionsToShow != null ? jsonEncode(optionsToShow) : null,
    };
  }
}
