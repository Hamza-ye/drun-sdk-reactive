import 'package:d_sdk/api/data-run-url-generator.util.dart';
import 'package:d_sdk/core/exception/database_exceptions.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';

typedef ProgressCallback = void Function(double progress);

abstract class BaseDataSource<T extends TableInfo<T, D>,
    D extends Insertable<D>> extends AbstractDatasource<D> {
  final HttpClient apiClient;
  final DbManager _dbManager;
  TableInfo<T, D> table;

  BaseDataSource(
      {required HttpClient apiClient,
      required DbManager dbManager,
      required this.table})
      : this.apiClient = apiClient,
        this._dbManager = dbManager;

  AppDatabase? get _activeDb => _dbManager.db;

  AppDatabase get db {
    throwIf(_activeDb == null, NoActiveDatabaseInstance());
    return _activeDb!;
  }

  Future<List<D>> get({bool forceRefresh = false}) async {
    if (forceRefresh) {
      await syncWithRemote();
    }

    return db.select(table).get();
  }

  Future<List<D>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final remoteData = await getOnline();
    progressCallback?.call(60);
    if (remoteData.isNotEmpty) {
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, remoteData);
        });
      });
    }
    progressCallback?.call(100);
    return remoteData;
  }

  @override
  Future<List<D>> getOnline() async {
    final dataRunResourceUrl = await this.dataRunResourceUrl();
    final response = await apiClient.request(
        resourceName: dataRunResourceUrl, method: 'get');

    List data = response.data != null
        ? response.data[this.apiResourceName]?.toList() ?? []
        : [];

    return data.map((dataItem) {
      dataItem['dirty'] = false;
      dataItem['synced'] = true;

      var x = fromApiJson({
        ...dataItem,
        'id': dataItem['uid'] ?? dataItem['id'].toString(),
      }, serializer: CustomSerializer());

      return x;
    }).toList();
  }

  Future<String> dataRunResourceUrl() {
    return Future.value(DataRunUrlGenerator.generate(apiResourceName));
  }
}
