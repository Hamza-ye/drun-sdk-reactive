import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

// UserAuthority Table
class UserAuthorities extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn authority = text()();

  late final TextColumn user = text().references(Users, #id)();
}