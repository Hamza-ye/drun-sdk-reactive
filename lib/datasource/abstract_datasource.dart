import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

typedef FromJsonCallback<D> = D Function(Map<String, dynamic> data);

abstract class AbstractDatasource<D> {
  String get apiResourceName;

  Future<List<D>> get({bool forceRefresh = false});

  Future<int> insertItem(Insertable<D> entry);

  Future<bool> updateItem(D item);

  Future<List<Insertable<D>>> syncWithRemote({SyncConfig? options});

  @protected
  Future<List<D>> getOnline();

  Future<String> dataRunResourceUrl();

  D fromApiJson(Map<String, dynamic> data);
}
