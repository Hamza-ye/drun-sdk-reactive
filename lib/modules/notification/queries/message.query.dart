import 'package:d2_remote/modules/notification/entities/message.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class MessageQuery extends BaseQuery<Message> {
  MessageQuery({Database? database}) : super(database: database);
}
