import 'package:d2_remote/modules/metadata/option_set/entities/option_group_option.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class OptionGroupOptionQuery extends BaseQuery<OptionGroupOption> {
  OptionGroupOptionQuery({Database? database}) : super(database: database);
}
