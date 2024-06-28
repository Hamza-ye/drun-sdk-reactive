import 'package:d2_remote/modules/datarun/engine/rule_engine.dart';
import 'package:d2_remote/modules/datarun/form/shared/rule.dart';

void main() {
  // Define form data (simplified for testing purposes)
  final formState = {
    "visitDate": {"value": "2024-06-13", "visible": true, "error": null, "warning": null},
    "patientName": {"value": "John Doe", "visible": true, "error": null, "warning": null},
    "patientAge": {"value": 12, "visible": true, "error": null, "warning": null},
    "patientLocation": {"value": "New York", "visible": true, "error": null, "warning": null},
    "gender": {"value": "Female", "visible": true, "error": null, "warning": null},
    "pregnant": {"value": false, "visible": false, "error": null, "warning": null},
    "testResult": {"value": "PF", "visible": true, "error": null, "warning": null},
    "severity": {"value": null, "visible": false, "error": null, "warning": null},
    "treatment": {"value": null, "visible": false, "error": null, "warning": null},
    "comment": {"value": "", "visible": true, "error": null, "warning": null},
  };

  // Define rules
  final rules = [
    Rule(
      field: 'pregnant',
      expression: 'gender == "Female" && patientAge >= 10',
      action: 'show',
      message: "This field is hidden/invalid/requires attention because...",
      id: '1',
    ),
    Rule(
      field: 'severity',
      expression: 'testResult == "PF" || testResult == "PV" || testResult == "MIX"',
      action: 'show',
      id: '2',
    ),
    Rule(
      field: 'treatment',
      expression: 'testResult == "PF" || testResult == "PV" || testResult == "MIX"',
      action: 'warning',
      message: 'Treatment might be required',
      id: '3',
    ),
  ];

  // Create the RuleEngine
  final ruleEngine = RuleEngine(formState: formState);

  // Apply rules
  ruleEngine.applyRules(rules);

  // Print the updated form state
  formState.forEach((key, value) {
    print('$key: $value');
  });
}
