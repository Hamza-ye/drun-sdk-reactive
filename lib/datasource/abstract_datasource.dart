import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

import 'datasource.dart';

typedef FromJsonCallback<D> = D Function(Map<String, dynamic> data);

abstract class AbstractDatasource<D> {
  Future<List<Insertable<D>>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback});

  String get resourceName;

  String get pathPostfix => '?paged=false';

  @protected
  Future<List<D>> getOnline();

  D fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer});
}
