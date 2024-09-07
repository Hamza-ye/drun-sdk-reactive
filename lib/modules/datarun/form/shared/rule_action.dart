enum Action {
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

  static List<Action> get VISIBILITY_ACTIONS =>
      <Action>[Visibility, Show];

  bool get isVisibility => VISIBILITY_ACTIONS.contains(this);

  static Action getAction(String? action) {
    switch (action?.toLowerCase()) {
      case 'visibility':
        return Action.Visibility;
      case 'Show':
        return Action.Show;
      case 'hide':
        return Action.Hide;
      case 'error':
        return Action.Error;
      case 'warning':
        return Action.Warning;
      case 'filter':
        return Action.Filter;
      case 'stopRepeat':
        return Action.StopRepeat;
      case 'mandatory':
        return Action.Mandatory;
      case 'count':
        return Action.Count;
      case 'assign':
        return Action.Assign;
      default:
        return Action.Unknown;
      // throw ArgumentError('Invalid value type: $valueType');
    }
  }
}
