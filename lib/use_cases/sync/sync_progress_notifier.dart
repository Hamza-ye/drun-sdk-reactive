import 'dart:async';

import 'package:collection/collection.dart';
import 'package:d_sdk/core/logging/new_app_logging.dart';
import 'package:d_sdk/use_cases/sync/model/resource_progress.dart';
import 'package:d_sdk/use_cases/sync/model/resource_state.dart';
import 'package:d_sdk/use_cases/sync/model/sync_progress.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SyncProgressNotifier {
  final _progress = ValueNotifier<SyncProgress>(SyncProgress.idle());
  final _resourceController = StreamController<ResourceProgress>.broadcast();
  final List<ResourceProgress> _resourceHistory = [];

  ValueListenable<SyncProgress> get progress => _progress;

  Stream<ResourceProgress> get resourceUpdates => _resourceController.stream;

  List<ResourceProgress> get resourceHistory =>
      UnmodifiableListView(_resourceHistory);

  Future<void> wrapOperation({
    required Future<void> Function() operation,
    int totalResources = 1,
  }) async {
    try {
      _updateProgress(SyncProgress.starting());
      await operation();
      _updateProgress(SyncProgress.complete());
    } catch (e, stack) {
      _updateProgress(SyncProgress.failed(e));
      _logError(e, stack);
      rethrow;
    }
  }

  Future<T> trackResource<T>(
    String resourceName,
    Future<T> Function() operation, {
    double weight = 1,
  }) async {
    try {
      _addResourceProgress(ResourceProgress.starting(resourceName));

      final result = await operation();

      _addResourceProgress(ResourceProgress.success(
          resourceName, result is List ? result.length : 0));
      return result;
    } catch (e) {
      _addResourceProgress(ResourceProgress.failure(resourceName, e));
      rethrow;
    }
  }

  void _updateProgress(SyncProgress newProgress) {
    _progress.value = newProgress;
  }

  void _addResourceProgress(ResourceProgress progress) {
    _resourceHistory.add(progress);
    _resourceController.add(progress);
    _updatePercentage(progress);
  }

  void _updatePercentage(ResourceProgress progress) {
    if (progress.state is ResourceStarting) {
      final completed = _resourceHistory
          .where(
              (p) => p.state is ResourceSucceeded || p.state is ResourceFailed)
          .length;

      final total =
          _resourceHistory.where((p) => p.state is! ResourceStarting).length;

      final double percentage = total > 0 ? (completed / total) * 100 : 0;
      _progress.value = SyncProgress.running(percentage);
    }
  }

  void _logError(Object error, StackTrace stack) {
    logError(error.toString());
    debugPrintStack(stackTrace: stack);
  }

  @disposeMethod
  void dispose() {
    _progress.dispose();
    _resourceController.close();
  }
}

// class SyncProgressNotifier {
//   final _progress = ValueNotifier<SyncProgress>(SyncProgress.idle());
//   final _resourceController = StreamController<ResourceProgress>();
//
//   ValueListenable<SyncProgress> get progress => _progress;
//   Stream<ResourceProgress> get resourceUpdates => _resourceController.stream;
//
//   Future<void> wrapOperation({
//     required Future<void> Function() operation,
//   }) async {
//     try {
//       _progress.value = SyncProgress.starting();
//       await operation();
//       _progress.value = SyncProgress.complete();
//     } catch (e) {
//       _progress.value = SyncProgress.failed(e);
//     }
//   }
//
//   Future<T> trackResource<T>(String name, Future<T> Function() operation) async {
//     _resourceController.add(ResourceProgress.starting(name));
//     try {
//       final result = await operation();
//       _resourceController.add(ResourceProgress.success(name));
//       return result;
//     } catch (e) {
//       _resourceController.add(ResourceProgress.failure(name, e));
//       rethrow;
//     }
//   }
// }
