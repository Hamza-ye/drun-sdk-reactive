import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';
import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.optionSet)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class OptionSetDatasource
    extends BaseDataSource<$DataOptionSetsTable, DataOptionSet>
    implements MetaDataSource<DataOptionSet> {
  OptionSetDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.dataOptionSets);

  @override
  String get resourceName => 'optionSets';

  @override
  Future<List<DataOptionSet>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final resourcePath = '$resourceName$pathPostfix';
    final response =
        await apiClient.request(resourceName: resourcePath, method: 'get');

    final raw = response.data;

    /// expecting paged list ({ apiResourceName: [...] }),
    List dataItems = raw?[resourceName]?.toList() ?? [];

    List<DataOption> options = [];
    for (final item in dataItems) {
      final optionsJson = item['options'] as List?;
      if (!options.isNullOrEmpty) {
        options.addAll(optionsJson!
            .asMap()
            .entries
            .map<DataOption>((t) => DataOption.fromJson(
                {...t.value, 'optionSet': item['uid']!, 'order': t.key + 1}))
            .toList());
      }
    }

    final optionSets = dataItems.map((item) {
      return fromApiJson({
        ...item,
        'id': item['uid']!,
        'translations': (item['translations'] as List?) ?? [],
      }, serializer: CustomSerializer());
    }).toList();

    progressCallback?.call(60);

    if (optionSets.isNotEmpty) {
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, optionSets);
        });
        if (options.isNotEmpty) {
          await db.batch((b) {
            b.insertAllOnConflictUpdate(db.managedTeams, options);
          });
        }
      });
    }
    progressCallback?.call(100);
    return optionSets;
  }

  @override
  DataOptionSet fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      DataOptionSet.fromJson(data, serializer: serializer);
}
