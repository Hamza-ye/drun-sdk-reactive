import 'package:drift/drift.dart';

import 'base.entity.mixin.dart';

mixin IdentifiableMixin on BaseTableMixin {
  late final name = text().nullable()();

  late final displayName = text().nullable()();

  late final code = text().nullable()();
}
