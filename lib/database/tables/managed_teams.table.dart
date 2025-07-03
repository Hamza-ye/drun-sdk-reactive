import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

@TableIndex(name: 'managed_team_cod_idx', columns: {#code})
class ManagedTeams extends Table with BaseTableMixin {
  TextColumn get code => text().nullable()();

  BoolColumn get disabled => boolean().nullable()();

  @ReferenceName("activityManagedTeams")
  TextColumn get activity => text().references(Activities, #id)();

  @ReferenceName("managedTeams")
  TextColumn get user => text().references(Users, #id)();

  TextColumn get teamUsers =>
      text().map(const TeamUsersConverter()).clientDefault(() => '[]')();
}
