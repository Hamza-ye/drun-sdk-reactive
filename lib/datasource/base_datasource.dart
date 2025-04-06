import 'package:d_sdk/api/data-run-url-generator.util.dart';
import 'package:d_sdk/core/exception/database_exceptions.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';

typedef ProgressCallback = void Function(double progress);

abstract class BaseDataSource<T extends TableInfo<T, D>,
    D extends Insertable<D>> extends AbstractDatasource<D> {
  final HttpClient _apiClient;
  final DbManager _dbManager;
  TableInfo<T, D> table;

  BaseDataSource(
      {required HttpClient apiClient,
      required DbManager dbManager,
      required this.table})
      : this._apiClient = apiClient,
        this._dbManager = dbManager;

  AppDatabase get activeDb => _dbManager.getActiveDb()!;

  Future<List<D>> get({bool forceRefresh = false}) async {
    if (forceRefresh) {
      await syncWithRemote();
    }
    // Return local data.
    final AppDatabase? db = _dbManager.getActiveDb();
    throwIf(db == null, NoActiveDatabaseInstance());
    return db!.select(table).get();
  }

  Future<int> insertItem(Insertable<D> entry) {
    return activeDb.into(table).insert(entry);
  }

  Future<bool> updateItem(D item) {
    return activeDb.update(table).replace(item);
  }

  // Future<D?> getItemById(String id) {
  //   return (activeDb.select(table)..where((tbl) => tbl.id.equals(id)))
  //       .getSingleOrNull();
  // }

  // Future<int> deleteItem(String id) {
  //   return (activeDb.delete(table)..where((tbl) => tbl.id.equals(id))).go();
  // }

  Future<List<D>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final remoteData = await _getOnline();
    progressCallback?.call(60);
    final AppDatabase? db = _dbManager.getActiveDb();
    throwIf(db == null, NoActiveDatabaseInstance());
    if (remoteData.isNotEmpty) {
      db!.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, remoteData);
        });
      });
    }
    progressCallback?.call(100);
    return remoteData;
  }

  Future<List<D>> _getOnline() async {
    final dataRunResourceUrl = await this.dataRunResourceUrl();
    final response = await _apiClient.request(
        resourceName: dataRunResourceUrl, method: 'get');

    List data = response.data != null
        ? response.data[this.apiResourceName]?.toList() ?? []
        : [];

    return data.map((dataItem) {
      dataItem['dirty'] = false;
      dataItem['synced'] = true;

      var x = fromApiJson(dataItem);

      return x;
    }).toList();
  }

  Future<String> dataRunResourceUrl() {
    return Future.value(DataRunUrlGenerator.generate(apiResourceName));
  }
}
