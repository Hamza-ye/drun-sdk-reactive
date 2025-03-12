enum AllowedAction {
  Add,
  Update,
  SoftDelete,
  ReadOnly;

  bool get canUpdate => this == Add || this == Update;

  bool get canAdd => this == Add;

  bool get canDelete => this == SoftDelete;

  static AllowedAction getValueType(String? allowedAction) {
    switch (allowedAction?.toLowerCase()) {
      case 'add':
        return AllowedAction.Add;
      case 'update':
        return AllowedAction.Update;
      case 'softdelete':
        return AllowedAction.SoftDelete;
      default:
        return AllowedAction.ReadOnly;
    }
  }
}
