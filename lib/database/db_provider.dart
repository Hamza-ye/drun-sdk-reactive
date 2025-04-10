import 'package:d_sdk/database/app_database.dart';
import 'package:injectable/injectable.dart';

@Order(1)
@LazySingleton(scope: 'authenticated')
class DbProvider {
  AppDatabase? _database;

  final String _databaseName;

  DbProvider(this._databaseName);

  AppDatabase get database {
    if (_database == null) {
      _database = AppDatabase(databaseName: _databaseName);
    }

    return _database!;
  }

  @disposeMethod
  Future<void> closeDatabase() async {
    await _database?.close();
    _database = null;
  }
}
