import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/tables/base.entity.mixin.dart';
import 'package:d_sdk/database/tables/identifiable.entity.mixin.dart';
import 'package:drift/drift.dart';

class FormTemplates extends Table with BaseTableMixin, IdentifiableMixin {
  TextColumn get label =>
      text().map(const MapConverter<String>()).withDefault(Constant('{}'))();

  /// Version is an integer.
  IntColumn get version => integer()();
}
