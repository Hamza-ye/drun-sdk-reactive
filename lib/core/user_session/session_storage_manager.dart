import 'package:d_sdk/core/cache/cached_user.dart';

abstract class SessionStorageManager {
  Future<CachedUser?> loadCurrentUser();

  Future<void> storeCurrentUser(CachedUser user);

  Future<List<CachedUser>> getCachedUsers();

  Future<void> removeCurrentCachedUser();
}
