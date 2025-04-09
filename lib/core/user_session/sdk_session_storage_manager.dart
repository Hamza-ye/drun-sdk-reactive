import 'dart:convert';

import 'package:d_sdk/core/cache/cache.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserSessionRepository)
class SdkUserSessionRepository implements UserSessionRepository {
  final CacheStorage _cacheStorage;

  SdkUserSessionRepository({required CacheStorage cacheStorage})
      : _cacheStorage = cacheStorage;

  @override
  Future<CachedUser?> loadCurrentUser() async {
    final String? currentUserName = await _cacheStorage.fetch(
      CacheKeys.userKey,
    );

    final cachedListString =
        await _cacheStorage.fetch(CacheKeys.cachedUsersKey);
    final List<CachedUser> cachedList = cachedListString
            ?.let((list) => jsonDecode(cachedListString))
            ?.map<CachedUser>(CachedUser.fromJson) ??
        <CachedUser>[];

    if ((currentUserName ?? '').isEmpty || cachedList.isEmpty) return null;

    return cachedList.firstOrNullWhere((u) => currentUserName == u.username);
  }

  @override
  Future<void> storeCurrentUser(CachedUser user) async {
    // save current User on top
    await _cacheStorage.save(
      key: CacheKeys.userKey,
      value: user.username,
    );

    // update loggedIn users cache
    return _updateLoggedInUsersCache(user);
  }

  @override
  Future<List<CachedUser>> getCachedUsers() async {
    final cachedListString =
        await _cacheStorage.fetch(CacheKeys.cachedUsersKey);
    return cachedListString
            ?.let((list) => jsonDecode(cachedListString))
            ?.map<CachedUser>(CachedUser.fromJson) ??
        <CachedUser>[];
  }

  Future<void> _updateLoggedInUsersCache(CachedUser user) async {
    final List<CachedUser> cachedList = await getCachedUsers();

    final updated =
        cachedList.where((u) => u.username != user.username).toList()
          ..add(user)
          ..map((u) => u.toJson());

    await _cacheStorage.save(
      key: CacheKeys.cachedUsersKey,
      value: jsonEncode(updated),
    );
  }

  @override
  Future<void> removeCurrentCachedUser() {
    return _cacheStorage.delete(CacheKeys.cachedUsersKey);
  }
}
