import 'package:d_sdk/database/converters/list_of_strings.converter.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class Users extends Table with BaseTableMixin {
  late final TextColumn username = text().unique()();
  late final TextColumn password = text()();
  // late final TextColumn baseUrl = text().nullable()();
  // late final BoolColumn isLoggedIn =
  //     boolean().withDefault(const Constant(false))();
  late final TextColumn firstName = text().nullable()();
  late final TextColumn lastname = text().nullable()();
  late final TextColumn mobile = text().nullable()();
  late final TextColumn email = text().nullable()();
  late final TextColumn langKey = text().withDefault(const Constant('ar'))();
  late final BoolColumn activated =
      boolean().withDefault(const Constant(false))();
  late final TextColumn imageUrl = text().nullable()();
  late final TextColumn authorities =
      text().map(const ListConverter<String>()).nullable()();

  // @override
  // List<Set<Column>> get uniqueKeys => [
  //       {username, baseUrl}
  //     ];
}
