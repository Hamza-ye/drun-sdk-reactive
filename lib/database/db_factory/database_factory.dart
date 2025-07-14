import 'dart:concurrent';

import 'package:d_sdk/database/db_factory/platform.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DatabaseFactory {
  static final _instances = <String, QueryExecutor>{};
  static final _locks = <String, Mutex>{};

  QueryExecutor openForUser(String userId) {
    final lock = _locks.putIfAbsent(userId, () => Mutex());
    return lock.runLocked(() {
      return _instances.putIfAbsent(userId, () {
        return Platform.createDatabaseConnection(userId);
      });
    });
  }

  Future<void> closeForUser(String userId) async {
    final lock = _locks.putIfAbsent(userId, () => Mutex());
    return lock.runLocked(() async {
      _instances.remove(userId);
    });
  }

  @disposeMethod
  Future<void> close() async {
    for (final executor in _instances.values) {
      await executor.close();
    }
    _instances.clear();
    _locks.clear();
  }
}
