// import 'package:d_sdk/core/exception/database_exceptions.dart';
// import 'package:d_sdk/core/http/http_client.dart';
// import 'package:d_sdk/core/sync/model/sync_config.dart';
// import 'package:d_sdk/database/app_database.dart';
// import 'package:d_sdk/database/converters/custom_serializer.dart';
// import 'package:d_sdk/database/dbManager.dart';
// import 'package:d_sdk/datasource/abstract_datasource.dart';
// import 'package:drift/drift.dart';
// import 'package:get_it/get_it.dart';
//
// typedef ProgressCallback = void Function(double progress);
//
// abstract class BaseDataSource<T extends TableInfo<T, D>,
//     D extends Insertable<D>> extends AbstractDatasource<D> {
//   final HttpClient apiClient;
//   final DbManager _dbManager;
//   TableInfo<T, D> table;
//
//   BaseDataSource(
//       {required HttpClient apiClient,
//       required DbManager dbManager,
//       required this.table})
//       : this.apiClient = apiClient,
//         this._dbManager = dbManager;
//
//   AppDatabase? get _activeDb => _dbManager.db;
//
//   AppDatabase get db {
//     throwIf(_activeDb == null, NoActiveDatabaseInstance());
//     return _activeDb!;
//   }
//
//   Future<List<D>> syncWithRemote(
//       {SyncConfig? options, ProgressCallback? progressCallback, Map<String, dynamic>? params}) async {
//     final List<D> remoteData = await getOnline();
//     progressCallback?.call(60);
//     if (remoteData.isNotEmpty) {
//       db.transaction(() async {
//         await db.batch((b) {
//           b.insertAllOnConflictUpdate(table, remoteData);
//         });
//       });
//     }
//     progressCallback?.call(100);
//     return remoteData;
//   }
//
//   @override
//   Future<List<D>> getOnline() async {
//     final resourcePath = '$resourceName$pathPostfix';
//     final response =
//         await apiClient.request(resourceName: resourcePath, method: 'get');
//
//     final raw = response.data;
//
//     /// expecting paged list ({ apiResourceName: [...] }),
//     List dataItems = raw?[resourceName]?.toList() ?? [];
//
//     return dataItems.map((item) {
//       item['dirty'] = false;
//       item['isToUpdate'] = true;
//       final label = item['label'];
//
//       return fromApiJson({
//         ...item,
//         'label': label,
//         'id': item['uid']!,
//         'translations': (item['translations'] as List?) ?? [],
//       }, serializer: CustomSerializer());
//     }).toList();
//   }
// }
