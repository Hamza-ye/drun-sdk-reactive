import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

import 'base_datasource.dart';

typedef FromJsonCallback<D> = D Function(Map<String, dynamic> data);

abstract class AbstractDatasource<D> {
  String get apiResourceName;

  Future<List<D>> get({bool forceRefresh = false});

  Future<List<Insertable<D>>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback});

  @protected
  Future<List<D>> getOnline();

  String resourceUrl();

  D fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer});
}
