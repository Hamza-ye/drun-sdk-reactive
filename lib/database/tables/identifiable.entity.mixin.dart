import 'package:d_sdk/database/converters/converters.dart';
import 'package:drift/drift.dart';

import 'base.entity.mixin.dart';

mixin IdentifiableMixin on BaseTableMixin {
  TextColumn get name => text().nullable()();

  TextColumn get displayName => text().nullable()();

  TextColumn get code => text().nullable()();

  TextColumn get label =>
      text().map(const NullAwareMapConverter()).nullable().clientDefault(() => '{}')();

  /// List of Translations
  TextColumn get translations =>
      text().map(const TranslationConverter()).clientDefault(() => '[]')();
}
