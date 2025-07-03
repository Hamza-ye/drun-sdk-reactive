import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class AssignmentForms extends Table {
  @ReferenceName("assignmentForms")
  TextColumn get assignment =>
      text().references(FlowInstances, #id, onUpdate: KeyAction.cascade)();

  @ReferenceName("formAssignments")
  TextColumn get form => text().references(FormTemplates, #id)();

  BoolColumn get canAddSubmissions =>
      boolean().nullable().clientDefault(() => false)();

  BoolColumn get canViewSubmissions =>
      boolean().nullable().clientDefault(() => false)();

  BoolColumn get canEditSubmissions =>
      boolean().nullable().clientDefault(() => false)();

  BoolColumn get canDeleteSubmissions =>
      boolean().nullable().clientDefault(() => false)();

  @override
  Set<Column<Object>> get primaryKey => {assignment, form};
}
