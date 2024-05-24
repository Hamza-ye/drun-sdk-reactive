import 'package:d2_remote/modules/data_run/village_location/entities/user_village_location.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class UserVillageLocationQuery extends BaseQuery<UserVillageLocation> {
  UserVillageLocationQuery({Database? database}) : super(database: database);
}
