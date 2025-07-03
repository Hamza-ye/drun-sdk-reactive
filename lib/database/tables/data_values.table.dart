import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class DataValues extends Table with BaseTableMixin {
  TextColumn get dataElement => text().references(DataElements, #id)();

  @ReferenceName("dataInstanceValues")
  TextColumn get dataInstance => text().references(DataSubmissions, #id)();

  TextColumn get value => text().nullable()();

  TextColumn get comment => text().nullable()();
}
