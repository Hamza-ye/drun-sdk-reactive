import 'package:d_sdk/api/api_client.util.dart';
import 'package:d_sdk/api/data-run-url-generator.util.dart';
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/core/sync/model/sync_logger.dart';
import 'package:d_sdk/core/sync/model/sync_progress_event.dart';
import 'package:d_sdk/core/utilities/query_filter.util.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';

typedef FromJsonCallback<T extends Table, D> = Insertable<D> Function(
    Map<String, dynamic> data);

abstract class ApiDataSource<T extends Table, D> {
  final String apiResourceName;
  final SyncLogger? _syncLogger;
  final AppDatabase database;
  final FromJsonCallback<T, D> fromJsonCallback;

  /// TODO move up to the manager or db Repository
  final TableInfo<T, D> e;

  ApiDataSource(
      {required this.database,
      required this.apiResourceName,
      required this.fromJsonCallback,
      required this.e,
      SyncLogger? syncLogger})
      : this._syncLogger = syncLogger;

  Future<List<T>> fetch({
    List<QueryFilter>? filters,
    DateTime? lastSync,
    int page = 1,
    int pageSize = 100,
  });

  Future<Iterable<Insertable<D>>> fetchOnline({Dio? dioTestClient}) async {
    final dataRunUrl = await this.dataRunUrl();
    final response = await ApiClient.get(dataRunUrl,
        database: this.database, dioTestClient: dioTestClient);

    List data = response.body != null
        ? response.body[this.apiResourceName]?.toList() ?? []
        : [];

    return data.map((dataItem) {
      dataItem['dirty'] = false;
      dataItem['synced'] = true;

      var x = fromJsonCallback.call(dataItem);

      return x;
    });
  }

  Future<Iterable<Insertable<D>>?> download({Dio? dioTestClient}) async {
    _syncLogger?.call(SyncProgressEvent(
        resourceName: this.apiResourceName,
        message:
            'Downloading ${this.apiResourceName.toLowerCase()} from the server....',
        percentage: 0));

    final data = await this.fetchOnline(dioTestClient: dioTestClient);

    _syncLogger?.call(SyncProgressEvent(
        resourceName: T.toString(),
        message:
            '${data.length} ${this.apiResourceName.toLowerCase()} downloaded successfully, saving...',
        percentage: 80));
    return data;
  }

  Future<Iterable<Insertable<D>>?> syncWithRemote(
      {Dio? dioTestClient, SyncConfig? options}) async {
    final remoteData = await download(dioTestClient: dioTestClient);

    /// TODO move up to the manager or db Repository
    if ((remoteData?.isNotEmpty ?? false)) {
      database.transaction(() async {
        await database.batch((b) {
          b.insertAllOnConflictUpdate<T, D>(e, remoteData!);
        });
      });
      _syncLogger?.call(SyncProgressEvent(
          resourceName: this.apiResourceName,
          message:
              '${remoteData!.length} ${this.apiResourceName.toLowerCase()} saved to local.',
          completed: true,
          percentage: 100));
    }

    return remoteData;
  }

  Future<String> dataRunUrl() {
    return Future.value(DataRunUrlGenerator.generate(apiResourceName));
  }
}
