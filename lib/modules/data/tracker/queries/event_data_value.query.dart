import 'package:d2_remote/modules/data/tracker/entities/event_data_value.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class EventDataValueQuery extends BaseQuery<EventDataValue> {
  EventDataValueQuery({Database? database}) : super(database: database);
  String? event;
  String? dataElement;

  EventDataValueQuery byEvent(String event) {
    this.event = event;
    return this.where(attribute: 'event', value: event);
  }

  EventDataValueQuery byDataElement(String dataElement) {
    this.dataElement = dataElement;
    return this.where(attribute: 'dataElement', value: dataElement);
  }
}
