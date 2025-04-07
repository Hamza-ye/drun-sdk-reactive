enum FormPermission {
  VIEW_SUBMISSIONS,
  ADD_SUBMISSIONS,
  EDIT_SUBMISSIONS,
  EDIT_SUBMISSIONS_FROM_USERS,
  EDIT_SUBMISSIONS_CONDITION,
  APPROVE_SUBMISSIONS,
  APPROVE_SUBMISSIONS_CONDITION,
  DELETE_SUBMISSIONS,
  DELETE_SUBMISSIONS_FROM_USERS,
  DELETE_SUBMISSIONS_CONDITION;

  bool canView() {
    return this == VIEW_SUBMISSIONS;
  }

  bool canAdd() {
    return this == ADD_SUBMISSIONS;
  }

  bool canEdit() {
    return this == EDIT_SUBMISSIONS ||
        this == EDIT_SUBMISSIONS_FROM_USERS ||
        this == EDIT_SUBMISSIONS_CONDITION;
  }

  bool canApprove() {
    return this == APPROVE_SUBMISSIONS || this == APPROVE_SUBMISSIONS_CONDITION;
  }

  bool canDelete() {
    return this == DELETE_SUBMISSIONS ||
        this == DELETE_SUBMISSIONS_FROM_USERS ||
        this == DELETE_SUBMISSIONS_CONDITION;
  }

  bool can(FormPermission permission) {
    switch (permission) {
      case VIEW_SUBMISSIONS:
        return canView();
      case ADD_SUBMISSIONS:
        return canAdd();
      case EDIT_SUBMISSIONS:
        return canEdit();
      case EDIT_SUBMISSIONS_FROM_USERS:
        return canEdit();
      case EDIT_SUBMISSIONS_CONDITION:
        return canEdit();
      case APPROVE_SUBMISSIONS:
        return canApprove();
      case APPROVE_SUBMISSIONS_CONDITION:
        return canApprove();
      case DELETE_SUBMISSIONS:
        return canDelete();
      case DELETE_SUBMISSIONS_FROM_USERS:
        return canDelete();
      case DELETE_SUBMISSIONS_CONDITION:
        return canDelete();
      default:
        return false;
    }
  }

  static List<FormPermission> get approvingPermissions =>
      [APPROVE_SUBMISSIONS, APPROVE_SUBMISSIONS_CONDITION];

  static FormPermission? getType(String? value) {
    switch (value) {
      case 'VIEW_SUBMISSIONS':
        return VIEW_SUBMISSIONS;
      case 'ADD_SUBMISSIONS':
        return ADD_SUBMISSIONS;
      case 'EDIT_SUBMISSIONS':
        return EDIT_SUBMISSIONS;
      case 'EDIT_SUBMISSIONS_FROM_USERS':
        return EDIT_SUBMISSIONS_FROM_USERS;
      case 'EDIT_SUBMISSIONS_CONDITION':
        return EDIT_SUBMISSIONS_CONDITION;
      case 'APPROVE_SUBMISSIONS':
        return APPROVE_SUBMISSIONS;
      case 'APPROVE_SUBMISSIONS_CONDITION':
        return APPROVE_SUBMISSIONS_CONDITION;
      case 'DELETE_SUBMISSIONS':
        return DELETE_SUBMISSIONS;
      case 'DELETE_SUBMISSIONS_FROM_USERS':
        return DELETE_SUBMISSIONS_FROM_USERS;
      case 'DELETE_SUBMISSIONS_CONDITION':
        return DELETE_SUBMISSIONS_CONDITION;
      default:
        return null;
    }
  }
}
