import 'package:d2_remote/modules/metadata/dashboard/entities/dashboard_item.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class DashboardItemQuery extends BaseQuery<DashboardItem> {
  DashboardItemQuery({Database? database}) : super(database: database);
}
