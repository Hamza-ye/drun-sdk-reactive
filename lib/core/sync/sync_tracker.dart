import 'package:d_sdk/database/app_database.dart';

class SyncTracker {
  final AppDatabase _db;

  SyncTracker(this._db);

  Future<bool> hasUnSyncedChanges() async {
    return _db.customSelect('''
      SELECT EXISTS(SELECT 1 FROM data_form_submissions WHERE synced = 0)
    ''').map((row) => row.read<bool>('exists')).getSingle();
  }
}
