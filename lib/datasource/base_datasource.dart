import 'package:d_sdk/core/exception/database_exceptions.dart';
import 'package:d_sdk/core/exception/http_errors.dart';
import 'package:d_sdk/core/exception/session_expired_exception.dart'
    show SessionExpiredException;
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/dbManager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';

typedef ProgressCallback = void Function(double progress);

abstract class BaseDataSource<T extends TableInfo<T, D>,
    D extends Insertable<D>> extends AbstractDatasource<D> {
  final Dio dioClient;
  final DbManager _dbManager;
  TableInfo<T, D> table;

  BaseDataSource(
      {required Dio dioClient,
      required DbManager dbManager,
      required this.table})
      : this.dioClient = dioClient,
        this._dbManager = dbManager;

  AppDatabase? get _activeDb => _dbManager.db;

  AppDatabase get db {
    throwIf(_activeDb == null, NoActiveDatabaseInstance());
    return _activeDb!;
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
    try {
      final response = await dioClient.get(resourceFullPath,
          options: Options(
            receiveTimeout: Duration(seconds: 70),
            sendTimeout: Duration(seconds: 40),
          ));

      final raw = response.data;

      /// expecting paged list ({ apiResourceName: [...] }),
      List dataItems = raw?[resourceName]?.toList() ?? [];

      return dataItems.map((item) {
        item['dirty'] = false;
        item['synced'] = true;

        return fromApiJson({
          ...item,
          'id': item['uid']!,
          'translations': (item['translations'] as List?) ?? [],
        }, serializer: CustomSerializer());
      }).toList();
    } on RevokeTokenException {
      throw SessionExpiredException();
    }
  }
}
