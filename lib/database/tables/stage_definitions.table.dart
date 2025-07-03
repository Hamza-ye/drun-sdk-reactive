import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class StageDefinitions extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get code => text().nullable()();

  TextColumn get stepLabel => text().nullable()();

  TextColumn get description => text().nullable()();

  BoolColumn get openAfterFLowRun => boolean().nullable()();

  BoolColumn get repeatable => boolean()();

  IntColumn get stepOrder => integer()();

  @ReferenceName("flowTypeStepTypes")
  TextColumn get flowType => text().references(FlowTypes, #id)();

  TextColumn get dataTemplate => text().references(FormTemplates, #id)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
