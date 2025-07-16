import 'dart:convert';

import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/converters/custom_serializer.dart';
import 'package:d_sdk/database/dao/sync_summaries_dao.dart';
import 'package:d_sdk/database/dbManager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

typedef ProgressCallback = void Function(double progress);

abstract class BaseDataSource<T extends TableInfo<T, D>,
    D extends Insertable<D>> extends AbstractDatasource<D> {
  HttpClient get apiClient => rSdkLocator<HttpClient<dynamic>>();

  TableInfo<TableInfo<Table, D>, D> get table;

  AppDatabase get db {
    // final instance = _dbManager.db;
    final instance = rSdkLocator<DbManager>().db;
    return instance;
  }

  SyncSummariesDao get _summariesDao => db.syncSummariesDao;

  /// The master “template” method we’ll never need to override.
  @override
  Future<List<D>> syncWithRemote({
    SyncConfig? options,
    ProgressCallback? progressCallback,
    Map<String, dynamic>? params,
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

  /// extract item ID (must match the PK column).
  @protected
  dynamic extractId(Map<String, dynamic> json) => json['uid'];
}

/// Helper for “extra” batch inserts
@protected
class CompanionInsert<T extends Table, D extends DataClass> {
  final TableInfo<T, D> table;
  final Insertable<D> entity;

  CompanionInsert(this.table, this.entity);
}

// ## What is a “Hook”?
//
// A **hook** is simply an extension point in an algorithm where subclasses (or clients) can plug in custom behavior without having to re‑write the entire algorithm. In code terms it’s:
//
// 1. **A protected (or abstract) method** declared in the base class.
// 2. **Called at a well‑defined spot** inside the template method.
// 3. **Overridden by subclasses** to customize just that one piece.
//
// Your `BaseDataSource.syncWithRemote()` is the **template method**—it defines the overall steps:
//
// 1. Fetch raw JSON
// 2. Ask for “extra” inserts
// 3. Map + collect IDs
// 4. Batch‑write main table
// 5. Batch‑write extras
// 6. Disable stale rows
//
// Each of those numbered steps is a potential hook. Subclasses simply override the hook(s) they need:
//
// * `extractExtraEntities(...)` to pull in child tables
// * `mapRemoteItem(...)` or `fromApiJson(...)` to tweak per‑row mapping
// * `disableStale(...)` to soft‑delete their own rows
//
// Everything else—transaction boundaries, progress callbacks, batched upserts—remains central and un‑duplicated.
//
// ---
//
// ## Why Hooks Matter
//
// * **DRY**: You avoid copy‑pasting the same transaction logic in every datasource.
// * **Separation of Concerns**: The base class cares about *how* to sync (the steps), and subclasses care only about *what* data they need to pull or modify at each step.
// * **Evolvability**: If you ever need to change “how” you upsert or disable stale rows, you do it once in the base—not in dozens of datasources.
//
// ---
//
// ## The Hook Pattern in Other Contexts
//
// You’ll see hooks everywhere, for example:
//
// * **UI frameworks** (React’s `useEffect` or Flutter hooks) expose lifecycle hooks so you can run code on mount/unmount.
// * **Logging libraries** let you hook into “before log” or “after log” events to add context or filter messages.
// * **Web frameworks** often have request lifecycle hooks (e.g. “onRequest”, “onResponse”) so you can inject authentication, metrics, etc.
//
// At heart it’s all the same idea: **“I’ll call you here if you need to do something extra.”**
//
// that’s exactly what people mean when they talk about “hooks” or “hook points” in an application.
