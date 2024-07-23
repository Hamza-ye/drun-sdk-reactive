import 'dart:convert';

class Rule {
  final String id;
  final String field;
  final String? expression;
  final String? action;
  final Map<String, String>? message;
  final FilterInfo? filterInfo;

  Rule(
      {required this.id,
      required this.field,
      this.expression,
      this.action,
      this.message,
      this.filterInfo});

  factory Rule.fromJson(Map<String, dynamic> json) {
    return Rule(
        id: json['id'],
        field: json['field'],
        expression: json['expression'],
        action: json['action'],
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
      'id': id,
      'field': field,
      'expression': expression,
      'action': action,
      'message': message != null ? jsonEncode(message) : null,
    };
  }
}

class FilterInfo {
  final String fieldToFilter;
  final List<String>? optionsToHide;
  final List<String>? optionsToShow;

  FilterInfo({
    required this.fieldToFilter,
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
      fieldToFilter: json['fieldToFilter'],
      optionsToHide: optionsToHide,
      optionsToShow: optionsToShow,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldToFilter': fieldToFilter,
      'optionsToHide': optionsToHide != null ? jsonEncode(optionsToHide) : null,
      'optionsToShow': optionsToShow != null ? jsonEncode(optionsToShow) : null,
    };
  }
}
