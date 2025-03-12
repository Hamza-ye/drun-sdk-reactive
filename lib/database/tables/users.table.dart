import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class Users extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn username = text().nullable()();

  late final TextColumn password = text().nullable()();

  late final TextColumn firstName = text().nullable()();

  late final TextColumn lastname = text().nullable()();

  late final TextColumn mobile = text().nullable()();

  late final TextColumn token = text().nullable()();

  late final TextColumn tokenType = text().nullable()();

  late final TextColumn refreshToken = text().nullable()();

  late final IntColumn tokenExpiry = integer().nullable()();

  late final TextColumn authType = text().nullable()();

  late final TextColumn baseUrl = text()();

  late final BoolColumn isLoggedIn = boolean()();

  late final TextColumn email = text().nullable()();

  late final TextColumn langKey = text().nullable()();

  late final BoolColumn activated = boolean().nullable()();

  late final TextColumn imageUrl = text().nullable()();

  late final TextColumn checkWithServerTime = text().nullable()();
}
