import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'form_permission_form_idx', columns: {#team, #form})
class UserFormPermissions extends Table {
  @ReferenceName("formPermissions")
  TextColumn get team => text().references(Teams, #id)();

  TextColumn get form => text()();

  DateTimeColumn get validFrom => dateTime().nullable()();

  DateTimeColumn get validTo => dateTime().nullable()();

  TextColumn get permissions => text().map(const FormPermissionsConverter())();

  @override
  Set<Column> get primaryKey => {team, form};
}
