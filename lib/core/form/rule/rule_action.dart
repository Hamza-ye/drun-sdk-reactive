enum ActionType {
  // Expression must be logical (true, false)
  Visibility,
  Show, // deprecated, use Visibility
  Hide, // deprecated, use Visibility
  Error, // deprecated, use Constraint
  Warning, // deprecated, use Constraint
  Filter, // deprecated, use choice Filter
  // Expression must be logical (true, false)
  StopRepeat,
  // Expression must be logical (true, false)
  Mandatory,
  // Expression result must be numerical >= 0
  Count,
  // Expression result must be a compatible Value with the Field type
  // i.e for default Value
  Assign,
  Unknown;

  static List<ActionType> get VISIBILITY_ACTIONS =>
      <ActionType>[Visibility, Show, Hide];

  bool get isVisibility => VISIBILITY_ACTIONS.contains(this);

  static ActionType getAction(String? action) {
    switch (action?.toLowerCase()) {
      case 'visibility':
        return ActionType.Visibility;
      case 'show':
        return ActionType.Show;
      case 'hide':
        return ActionType.Hide;
      case 'error':
        return ActionType.Error;
      case 'warning':
        return ActionType.Warning;
      case 'filter':
        return ActionType.Filter;
      case 'stopRepeat':
        return ActionType.StopRepeat;
      case 'mandatory':
        return ActionType.Mandatory;
      case 'count':
        return ActionType.Count;
      case 'assign':
        return ActionType.Assign;
      default:
        return ActionType.Unknown;
      // throw ArgumentError('Invalid value type: $valueType');
    }
  }
}
