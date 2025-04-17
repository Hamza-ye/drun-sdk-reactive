import 'package:d_sdk/database/converters/list_of_strings.converter.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class Users extends Table with BaseTableMixin {
  TextColumn get username => text().unique()();

  // TextColumn get password => text()();

  TextColumn get firstName => text().nullable()();

  TextColumn get lastname => text().nullable()();

  TextColumn get mobile => text().nullable()();

  TextColumn get email => text().nullable()();

  TextColumn get langKey => text().clientDefault(() => 'ar')();

  BoolColumn get activated => boolean().clientDefault(() => true)();

  TextColumn get imageUrl => text().nullable()();

  TextColumn get authorities =>
      text().map(const ListConverter<String>()).clientDefault(() => '[]')();
}
