import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

class Assignments extends Table with BaseTableMixin, IdentifiableMixin {
  late final TextColumn activity = text().references(Activities, #id)();

  late final TextColumn team = text().references(Teams, #id)();

  late final TextColumn orgUnit = text().references(OrgUnits, #id)();

  // Parent reference (stored as a text foreign key, if applicable)
  late final TextColumn parent = text().nullable()();

  // Start day as integer, nullable
  late final IntColumn startDay = integer().nullable()();

  // Start date as text (ISO string, for example)
  late final DateTimeColumn startDate = dateTime().nullable()();

  // Assignment status stored as text via a converter
  late final TextColumn status =
      text().map(const EnumNameConverter(AssignmentStatus.values)).nullable()();

  // allocatedResources stored as JSON string
  late final TextColumn allocatedResources =
      text().map(const AllocatedResourcesConverter()).nullable()();

  // forms stored as JSON string representing a List<String>
  late final TextColumn forms =
      text().map(const ListConverter<String>()).nullable()();

  // scope stored as text via a converter
  late final TextColumn scope =
      text().map(const EnumNameConverter(EntityScope.values)).nullable()();
}
