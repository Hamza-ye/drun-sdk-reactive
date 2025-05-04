import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'team_cod_idx', columns: {#code})
class Teams extends Table with BaseTableMixin {
  TextColumn get code => text().nullable()();

  /// Boolean columns with defaults.
  BoolColumn get disabled => boolean().nullable()();

  @ReferenceName("activityTeams")
  TextColumn get activity => text().references(Activities, #id)();

  @ReferenceName("userTeams")
  TextColumn get user => text().references(Users, #id)();

// /// Form permissions stored as JSON representing a list of TeamFormPermission.
// TextColumn get formPermissions => text()
//     .map(const TeamFormPermissionListConverter())
//     .clientDefault(() => '[]')();
}
