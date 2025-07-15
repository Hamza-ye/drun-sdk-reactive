import 'dart:convert';

import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/dao/sync_summaries_dao.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:dio/dio.dart' hide ProgressCallback;
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

mixin BaseExtension<D extends Insertable> on DatabaseAccessor<AppDatabase> {
  HttpClient get apiClient => rSdkLocator<HttpClient<dynamic>>();

  TableInfo<TableInfo<Table, D>, D> get table;

  String get resourceName;

  D fromApiJson(Map<String, dynamic> data, {ValueSerializer? serializer});

  String get resourcePath => '$resourceName?paged=false';

  SyncSummariesDao get _summariesDao => attachedDatabase.syncSummariesDao;

  /// extract item ID (must match the PK column).
  @protected
  dynamic extractId(Map<String, dynamic> json) => json['uid'];

  /// The master “template” method we’ll never need to override.
  // @override
  Future<List<D>> syncWithRemote({
    SyncConfig? options,
    ProgressCallback? progressCallback,
  }) async {
    final errors = <String>[];
    List<Map<String, dynamic>> rawJson;

    // 1) Fetch
    try {
      // Fetch raw JSON
      rawJson = await getOnlineRaw(options: options);
    } on DioException catch (e) {
      errors.add('Fetch error: ${e.message}');
      rawJson = []; // proceed with empty payload (or rethrow if you prefer)
    } catch (e) {
      logError('Unexpected fetch error: `$resourcePath`', source: e);
      errors.add('Unexpected fetch error: $e');
      rawJson = [];
    }
    progressCallback?.call(10);

    // 2) Extract extras
    List<CompanionInsert> extra;
    try {
      // A hook, let subclass extract any “auxiliary” entities
      extra = await extractExtraEntities(rawJson);
    } catch (e) {
      logError('Extract extra entities error: `$resourcePath`', source: e);
      errors.add('Extract extra entities error: $e');
      extra = [];
    }
    progressCallback?.call(30);

    // 3) Map & collect IDs
    // Map JSON → your D objects, and collect the server’s “live” IDs
    final mapped = <D>[];
    final liveIds = <String>[];
    for (var item in rawJson) {
      try {
        final entity = mapRemoteItem(item);
        mapped.add(entity);
        liveIds.add(extractId(item) as String);
      } catch (e) {
        logError('Mapping error: `$resourcePath`, for uid=`${item['uid']}`',
            source: e);
        errors.add('Mapping error for uid=${item['uid']}: $e');
      }
    }
    progressCallback?.call(60);

    // Transaction (upserts + disable)
    try {
      await db.transaction(() async {
        if (mapped.isNotEmpty) {
          await db.batch((b) => b.insertAllOnConflictUpdate(table, mapped));
        }

        // let subclass write any extra tables it needs
        if (extra.isNotEmpty) {
          await db.batch((b) {
            for (var ci in extra) {
              b.insertAllOnConflictUpdate(ci.table, [ci.entity]);
            }
          });
        }

        // disable anything not in liveIds
        await disableStale(liveIds);
      });
    } catch (e) {
      logError('Database write error: `$resourcePath`', source: e);
      errors.add('Database write error: $e');
    }
    progressCallback?.call(90);

    // 5) Record summary
    logDebug('saving sync summary: `$resourceName`',
        data: {'mapped': mapped.length, 'errors': errors.length});
    await _summariesDao.upsertSummary(SyncSummary(
      entity: resourceName,
      lastSync: DateTime.now(),
      successCount: mapped.length,
      failureCount: errors.length,
      errorsJson: errors.isEmpty ? null : jsonEncode(errors),
    ));
    progressCallback?.call(100);

    return mapped;
  }

  /// Step 1: fetch the raw JSON list—subclasses only override if they must page, add headers, etc.
  @protected
  Future<List<Map<String, dynamic>>> getOnlineRaw({
    SyncConfig? options,
  }) async {
    final response = await apiClient.request(
      resourceName: resourcePath,
      method: 'get',
    );
    final raw = response.data?[resourceName] as List? ?? [];
    return raw.cast<Map<String, dynamic>>();
  }

  /// Step 2: subclasses can override to return extra companion objects for other tables.
  /// Hook2: subclasses override to pull out extra tables’ inserts.
  /// E.g. TeamDS would pull out its `ManagedTeam` inserts here.
  /// Now async
  @protected
  Future<List<CompanionInsert>> extractExtraEntities(
      List<Map<String, dynamic>> raw) async {
    return [];
  }

  /// Step 3a: map one JSON item → to Drift entity.
  @protected
  D mapRemoteItem(Map<String, dynamic> json) {
    // default just calls your existing fromApiJson
    final withFlags = {
      ...json,
      'id': extractId(json),
      'dirty': false,
      'isToUpdate': true,
      'label': json['label'] ?? <String, dynamic>{},
      'translations': (json['translations'] as List?) ?? [],
    };
    return fromApiJson(withFlags, serializer: CustomSerializer());
  }

  /// Hook4: disable (soft‑delete) any rows not in [liveIds].
  /// Subclasses must implement this, because only they know their `isDisabled` column.
  @protected
  Future<void> disableStale(List<Object> liveIds) async {
    // override in entities with disabling requirements
  }
}
