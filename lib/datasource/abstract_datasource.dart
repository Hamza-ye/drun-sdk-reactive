import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/di/app_environment.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

import 'datasource.dart';

typedef FromJsonCallback<D> = D Function(Map<String, dynamic> data);

abstract class AbstractDatasource<D> {
  Future<List<Insertable<D>>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback});

  String get resourceName;

  String get pathPostfix => '?paged=false';

  // String get apiVersionPath => '/${AppEnvironment.apiV1Path}';

  // String get resourceFullPath =>
  //     '${this.apiVersionPath}/$resourceName${pathPostfix.isNotEmpty ? '?$pathPostfix' : ''}';

  @protected
  Future<List<D>> getOnline();

  D fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer});
}
